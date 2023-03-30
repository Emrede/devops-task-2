#!/usr/bin/env python
import pika

credentials = pika.PlainCredentials('user', 'apaQVRr1Ty0SWGal')
connection = pika.BlockingConnection(pika.ConnectionParameters('localhost',
                                                               5672,
                                                               '/',
                                                               credentials))
channel = connection.channel()

channel.queue_declare(queue='hello')

channel.basic_publish(exchange='',
                      routing_key='hello',
                      body='HellooooOoOO World!')
print(" [x] Message Sent'")

connection.close()
