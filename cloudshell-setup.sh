#!/bin/bash
wget "https://releases.hashicorp.com/terraform/0.8.4/terraform_0.8.4_linux_amd64.zip" -O terraform.zip
unzip terraform.zip
if [[ -d $HOME/bin ]]; then
  mkdir $HOME/bin
  mkdir $HOME/completion.d
fi
mv terraform bin/terraform
wget "https://raw.githubusercontent.com/Bash-it/bash-it/master/completion/available/terraform.completion.bash" -O $HOME/completion.d/terraform
export PATH=$PATH:$HOME/bin
source $HOME/completion.d/terraform
rm terraform.zip
