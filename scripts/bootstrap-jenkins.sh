#!/bin/bash 


k apply -f namespaces/jenkins-namespace.yaml
k apply -f charts/jenkins/jenkins.volume.yaml
helm install jenkins -f charts/jenkins/values.yaml jenkins/jenkins --namespace jenkins