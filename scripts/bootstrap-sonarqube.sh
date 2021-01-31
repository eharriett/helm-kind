#!/bin/bash 

k apply -f namespaces/sonarqube-namespace.yaml
k -njenkins create -f charts/sonarqube/sonarqube.yaml
