import cv2
import numpy as np
from collections import deque
from tensorflow.keras.models import load_model, Model


SEQ_LEN = 30
IMG_SIZE = 100
THRESHOLD = 0.5



cnn_full = load_model("cnn_drowsiness_stage1.h5")
lstm_model = load_model("lstm_drowsiness_stage3.h5")


cnn_feature_extractor = Model(
    inputs=cnn_full.inputs,
    outputs=cnn_full.layers[-2].output
)



feature_buffer = deque(maxlen=SEQ_LEN)


cap = cv2.VideoCapture(0)

print("Press 'q' to quit")

while True:
    ret, frame = cap.read()
    if not ret:
        break


    img = cv2.resize(frame, (IMG_SIZE, IMG_SIZE))
    img_norm = img / 255.0
    img_norm = np.expand_dims(img_norm, axis=0)

 
    feature = cnn_feature_extractor.predict(img_norm, verbose=0)[0]
    feature_buffer.append(feature)

    label_text = "Collecting frames..."
    color = (255, 255, 0)


    if len(feature_buffer) == SEQ_LEN:
        seq = np.array(feature_buffer)
        seq = np.expand_dims(seq, axis=0)

        prob = lstm_model.predict(seq, verbose=0)[0][0]

        if prob > THRESHOLD:
            label_text = "ALERT"
            color = (0, 255, 0)
        else:
            label_text = "DROWSY"
            color = (0, 0, 255)


    cv2.putText(
        frame,
        label_text,
        (30, 50),
        cv2.FONT_HERSHEY_SIMPLEX,
        1.2,
        color,
        3
    )

    cv2.imshow("Driver Drowsiness Detection", frame)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv2.destroyAllWindows()
