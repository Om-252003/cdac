from pydoc_data.topics import topics

from kafka import KafkaConsumer

KAFKA_TOPIC = "demo-topic"
KAFKA_SERVER = "pkc-n98pk.us-west-2.aws.confluent.cloud:9092"
KAFKA_API_KEY = "JEOMMZUSAM7TODAR"
KAFKA_API_SECRET = "cflt+uoNN/7+StbXZ7iOto9tsv7ofnCsmuQSVpfAqoGC4ARyv5xhbfXuH+5VqQfg"


def consume_from_kafka():
    consumer = KafkaConsumer(
        KAFKA_TOPIC,
        bootstrap_servers = KAFKA_SERVER,
        auto_offset_reset="earliest",
        enable_auto_commit = True,
        security_protocol="SASL_SSL",
        sasl_mechanism="PLAIN",
        sasl_plain_username=KAFKA_API_KEY,
        sasl_plain_password=KAFKA_API_SECRET,
        value_deserializer=lambda v: v.decode("utf-8")
    )

    print("waiting for message..")
    for message in consumer:
        email=message.value
        print(f"New Signup with email : {email}")

if __name__ == "__main__":
    consume_from_kafka()
