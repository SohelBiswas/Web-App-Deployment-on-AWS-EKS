#!/bin/bash
kubectl delete -f k8s/
terraform destroy -auto-approve
