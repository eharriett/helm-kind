#!/bin/bash 

k apply -f namespaces/jenkins-namespace.yaml
k apply -f charts/jenkins/jenkins-volume.yaml
k -njenkins create -f charts/jenkins/jenkins-volume-claim.yaml
k get secret --namespace jenkins jenkins -o jsonpath="{.data.jenkins-admin-password}" | base64 --decode

helm install jenkins -f charts/jenkins/values.yaml jenkins/jenkins --namespace jenkins