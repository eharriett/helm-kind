#!/bin/bash 

GITHUB_USER=$1
REPO_NAME=$2

flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=$REPO_NAME \
  --branch=main \
  --path=./clusters/my-cluster \
  --personal