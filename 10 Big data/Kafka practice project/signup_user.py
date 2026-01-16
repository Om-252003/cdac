def signup_user():
    while True:
        email = input("Enter email or type q: ")
        if email == "q":
            print("signup process end")
            break

        with open("emails.txt", "a") as mailsfile:
            mailsfile.write(email+"\n")

        print(f"Email {email} stored successfully")


if __name__ == "__main__":
    signup_user()


