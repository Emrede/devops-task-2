#!/usr/bin/env python
import pika
import time

rabbitmq_host_ip = '10.111.118.174'
rabbitmq_port = 5672
credentials = pika.PlainCredentials('user', 'apaQVRr1Ty0SWGal')

connection = pika.BlockingConnection(pika.ConnectionParameters(rabbitmq_host_ip,
                                                               rabbitmq_port,
                                                               '/',
                                                               credentials))
channel = connection.channel()

channel.queue_declare(queue='hello')

while True:
    channel.basic_publish(exchange='',
                        routing_key='hello',
                        body='HellooooOoOO World!')
    print(" [x] Message Sent")
    time.sleep(5)

# connection.close()