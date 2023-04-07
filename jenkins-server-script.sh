#!/bin/bash

# Update the package list and install OpenJDK 11
sudo apt update -y
sudo apt install openjdk-11-jre -y

# Add the Jenkins repository key and package source
curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update the package list again and install Jenkins
sudo apt-get update -y
sudo apt-get install jenkins -y

# Add the Kubernetes repository key and package source
sudo apt-get install -y ca-certificates curl apt-transport-https
sudo curl -fsSLo /etc/apt/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

# Update the package list again and install kubectl
sudo apt-get update -y
sudo apt-get install -y kubectl

# Add the Git PPA repository and install Git
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update -y
sudo apt-get install -y git
