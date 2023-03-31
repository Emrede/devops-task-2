#!/usr/bin/env python
import pika

rabbitmq_host_ip = '10.109.12.158'
rabbitmq_port = 5672
credentials = pika.PlainCredentials('user', 'apaQVRr1Ty0SWGal')

connection = pika.BlockingConnection(pika.ConnectionParameters(rabbitmq_host_ip,
                                                               rabbitmq_port,
                                                               '/',
                                                               credentials))
channel = connection.channel()

channel.queue_declare(queue='hello')

channel.basic_publish(exchange='',
                      routing_key='hello',
                      body='HellooooOoOO World!')
print(" [x] Message Sent")

connection.close()