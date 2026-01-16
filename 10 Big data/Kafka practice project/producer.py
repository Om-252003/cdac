from ensurepip import bootstrap

from kafka import KafkaProducer
import time
import os

KAFKA_TOPIC = "demo-topic"
KAFKA_SERVER = "pkc-n98pk.us-west-2.aws.confluent.cloud:9092"
KAFKA_API_KEY = "JEOMMZUSAM7TODAR"
KAFKA_API_SECRET = "cflt+uoNN/7+StbXZ7iOto9tsv7ofnCsmuQSVpfAqoGC4ARyv5xhbfXuH+5VqQfg"
EMAILS_FILE = "emails.txt"


def send_to_kafka():
    producer = KafkaProducer(bootstrap_servers=KAFKA_SERVER,
                             security_protocol="SASL_SSL",
                             sasl_mechanism="PLAIN",
                             sasl_plain_username=KAFKA_API_KEY,
                             sasl_plain_password=KAFKA_API_SECRET,
                             value_serializer=lambda v: v.encode("utf-8"))
    seen_emails = set()

    while True:
        if os.path.exists(EMAILS_FILE):
            with open(EMAILS_FILE, "r", encoding="utf-8") as file:
                for email in file:
                    email = email.strip()
                    if email and email not in seen_emails:
                        producer.send(KAFKA_TOPIC, email)
                        print(f"sent email {email} to kafka topic {KAFKA_TOPIC}")
                        seen_emails.add(email)
        time.sleep(2)

    producer.flush()
    producer.close()

if __name__ == "__main__":
    send_to_kafka()
