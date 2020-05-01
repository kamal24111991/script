#!/bin/bash

######Install AWSCLI############################
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt-get install unzip
unzip awscliv2.zip
sudo ./aws/install


########Install Kubectl##############################
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.0/bin/linux/amd64/kubectl
sudo chmod +x kubectl
sudo cp kubectl /usr/local/bin/

#########Install Terragrunt#############################
wget https://github.com/gruntwork-io/terragrunt/releases/download/v0.23.6/terragrunt_linux_amd64
mv terragrunt_linux_amd64 terragrunt
chmod +x terragrunt
sudo mv terragrunt /usr/local/bin


##############Install AWS IAM Authenticator##############
curl -o aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.15.10/2020-02-22/bin/linux/amd64/aws-iam-authenticator
sudo chmod +x ./aws-iam-authenticator
mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$PATH:$HOME/bin
echo 'export PATH=$PATH:$HOME/bin' >> ~/.bashrc

###############Install Terraform###########################
wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
unzip terraform_0.12.24_linux_amd64.zip
sudo mv terraform /usr/local/bin


#################Install EKSCTL##############################
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin


