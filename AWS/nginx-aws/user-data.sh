#!/bin/bash
# Update system and install base packages
dnf update -y
dnf install -y aws-cli jq tar gzip curl unzip

# Install kubectl (latest stable version)
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.31.0/2024-09-12/bin/darwin/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/local/bin/

# Install aws-iam-authenticator
curl -o aws-iam-authenticator https://amazon-eks.s3.amazonaws.com/latest/bin/linux/amd64/aws-iam-authenticator
chmod +x aws-iam-authenticator
mv aws-iam-authenticator /usr/local/bin/

# Install Helm (latest version 2024)
curl -fsSL https://get.helm.sh/helm-v3.14.0-linux-amd64.tar.gz -o helm.tar.gz
tar -zxvf helm.tar.gz
mv linux-amd64/helm /usr/local/bin/helm
rm -rf helm.tar.gz linux-amd64

echo "Bastion Host setup complete."