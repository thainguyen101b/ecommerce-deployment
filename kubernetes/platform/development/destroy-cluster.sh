#!/bin/sh

echo "\n🏴️ Destroying Kubernetes cluster...\n"

minikube stop --profile ecommerce-cluster

minikube delete --profile ecommerce-cluster

echo "\n🏴️ Cluster destroyed\n"