#!/bin/bash
# terraform
wget "https://releases.hashicorp.com/terraform/0.8.4/terraform_0.8.4_linux_amd64.zip" -O terraform.zip
unzip terraform.zip
if [[ -d $HOME/bin ]]; then
  mkdir $HOME/bin
fi
chmod +x terraform
mv terraform $HOME/bin/
wget "https://raw.githubusercontent.com/Bash-it/bash-it/master/completion/available/terraform.completion.bash"
export PATH=$PATH:$HOME/bin
source ./terraform.completion.bash
rm terraform.zip
