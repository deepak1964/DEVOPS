#!/bin/bash
docker build -t task2 .
echo Hyyy
docker login -u deepak102 -p deepak@2005
docker tag task2 deepak102/task4
docker push deepak102/task4
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
