#!/bin/bash

kubectl port-forward my-rabbitmq-release-0 15672:15672 5672:5672
kubectl port-forward my-jenkins-release-0 80:80 8080:8080
