#! /bin/bash

sudo apt install zip -y
curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash

tflint --init 
tflint
