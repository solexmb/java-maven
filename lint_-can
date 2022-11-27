#! /bin/bash

sudo apt-get update -y
# install yaml lint
sudo apt-get install yamllint -y

#install json lint
sudo apt install python3-demjson -y
# install TF lint
sudo apt install zip -y
curl -s https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh | bash

echo "VALIDATING JSON SYNTAX"
# scan for valid json
find . -name "*.json" -exec jsonlint {} \;

echo "VALIDATING YAML SYNTAX"
# scan for valid yaml 
find . -type f \( -name "*.yaml" -o -name "*.yml" \) -exec yamllint {} \;

echo "VALIDATING TF SYNTAX"
# scan for valid TF
tflint --init 
tflint
