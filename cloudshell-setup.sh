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

# git prompt
wget "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh"
source git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM=1
GIT_PS1_SHOWUNTRACKEDFILES=
GIT_PS1_SHOWSTASHSTATE=1
export PS1='\[\033[1;32m\]\u\[\033[00m\]:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\] \$ '
