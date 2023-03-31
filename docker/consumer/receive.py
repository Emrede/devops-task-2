#!/usr/bin/env python
import pika
import sys
import os

def main():
    rabbitmq_host_ip = 'localhost' 
    rabbitmq_port = 5672
    credentials = pika.PlainCredentials('user', 'apaQVRr1Ty0SWGal')
    
    connection = pika.BlockingConnection(pika.ConnectionParameters(rabbitmq_host_ip,
                                                                   rabbitmq_port,
                                                                   '/',
                                                                   credentials))
    channel = connection.channel()

    channel.queue_declare(queue='hello')

    def callback(ch, method, properties, body):
        print(" [x] Received %r" % body)

    channel.basic_consume(
        queue='hello', on_message_callback=callback, auto_ack=True)

    print(' [*] Waiting for messages. To exit press CTRL+C')
    channel.start_consuming()


if __name__ == '__main__':
    try:
        main()
    except KeyboardInterrupt:
        print('Interrupted')
        try:
            sys.exit(0)
        except SystemExit:
            os._exit(0)

