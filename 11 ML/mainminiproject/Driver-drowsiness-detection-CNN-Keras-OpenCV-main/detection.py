import cv2
import numpy as np
import time
from keras.models import load_model
from pygame import mixer

# ------------------ AUDIO ------------------
mixer.init()
sound = mixer.Sound('alarm.wav')

# ------------------ HAARCASCADES ------------------
face = cv2.CascadeClassifier('haarcascade/haarcascade_frontalface_alt.xml')
leye = cv2.CascadeClassifier('haarcascade/haarcascade_lefteye_2splits.xml')
reye = cv2.CascadeClassifier('haarcascade/haarcascade_righteye_2splits.xml')

# ------------------ MODEL ------------------
model = load_model('CNN__model.h5')   # trained on 100x100 grayscale eye images

# ------------------ CAMERA ------------------
cap = cv2.VideoCapture(0)
if not cap.isOpened():
    raise RuntimeError(" Webcam not accessible")

font = cv2.FONT_HERSHEY_COMPLEX_SMALL

# ------------------ DROWSINESS PARAMETERS ------------------
DROWSY_TIME_THRESHOLD = 2.0        # seconds of continuous eye closure
PERCLOS_WINDOW = 30                # seconds
PERCLOS_THRESHOLD = 0.4            # 40% eye-closure = drowsy

eye_closed_start = None
is_drowsy = False

# Store eye states over time for PERCLOS
eye_state_history = []  # (timestamp, closed=1/open=0)

# ------------------ HELPER FUNCTION ------------------
def eye_state_from_prob(prob):
    """
    Convert CNN probability to eye state using confidence band.
    Returns:
        0 = closed
        1 = open
        -1 = uncertain (ignored)
    """
    if prob < 0.3:
        return 0
    elif prob > 0.7:
        return 1
    else:
        return -1

# ------------------ MAIN LOOP ------------------
while True:
    ret, frame = cap.read()
    if not ret:
        break

    height, width = frame.shape[:2]
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    current_time = time.time()

    faces = face.detectMultiScale(gray, 1.1, 5)
    left_eye = leye.detectMultiScale(gray)
    right_eye = reye.detectMultiScale(gray)

    # Default assumption: eyes open
    rstate = 1
    lstate = 1

    cv2.rectangle(frame, (0, height - 50), (300, height), (0, 0, 0), cv2.FILLED)

    # ---------- FACE ----------
    for (x, y, w, h) in faces:
        cv2.rectangle(frame, (x, y), (x + w, y + h), (150, 150, 150), 1)

    # ---------- RIGHT EYE ----------
    for (x, y, w, h) in right_eye:
        r_eye = gray[y:y + h, x:x + w]
        r_eye = cv2.resize(r_eye, (100, 100))
        r_eye = r_eye / 255.0
        r_eye = r_eye.reshape(1, 100, 100, 1)

        rprob = model.predict(r_eye, verbose=0)[0][0]
        rstate = eye_state_from_prob(rprob)
        break

    # ---------- LEFT EYE ----------
    for (x, y, w, h) in left_eye:
        l_eye = gray[y:y + h, x:x + w]
        l_eye = cv2.resize(l_eye, (100, 100))
        l_eye = l_eye / 255.0
        l_eye = l_eye.reshape(1, 100, 100, 1)

        lprob = model.predict(l_eye, verbose=0)[0][0]
        lstate = eye_state_from_prob(lprob)
        break

    # ---------- EYE CLOSURE LOGIC (TIME-BASED) ----------
    eyes_closed = (rstate == 0 and lstate == 0)

    if eyes_closed:
        if eye_closed_start is None:
            eye_closed_start = current_time
        elif current_time - eye_closed_start >= DROWSY_TIME_THRESHOLD:
            is_drowsy = True
    else:
        eye_closed_start = None
        is_drowsy = False

    # ---------- PERCLOS CALCULATION ----------
    eye_state_history.append((current_time, 1 if eyes_closed else 0))

    # Keep only last N seconds
    eye_state_history = [
        (t, s) for (t, s) in eye_state_history
        if current_time - t <= PERCLOS_WINDOW
    ]

    if eye_state_history:
        closed_count = sum(s for _, s in eye_state_history)
        perclos = closed_count / len(eye_state_history)
    else:
        perclos = 0

    if perclos >= PERCLOS_THRESHOLD:
        is_drowsy = True

    # ---------- DISPLAY ----------
    if is_drowsy:
        cv2.putText(frame, "DROWSY", (10, height - 20),
                    font, 1, (0, 0, 255), 2)
        try:
            sound.play()
        except:
            pass
        cv2.rectangle(frame, (0, 0), (width, height), (0, 0, 255), 3)
    else:
        cv2.putText(frame, "ALERT", (10, height - 20),
                    font, 1, (0, 255, 0), 2)
        sound.stop()

    cv2.putText(frame, f"PERCLOS: {perclos:.2f}", (160, height - 20),
                font, 0.8, (255, 255, 255), 1)

    cv2.imshow("Driver Drowsiness Detection (CNN)", frame)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# ------------------ CLEANUP ------------------
cap.release()
cv2.destroyAllWindows()
