#!/bin/bash

BASE_IMAGE=$(grep "FROM " Dockerfile | awk '{print $2}')
echo $BASE_IMAGE

docker run --rm -v $HOME:/root/.cache/ aquasec/trivy:0.17.2 -q image --exit-code 0 --severity HIGH --light $BASE_IMAGE
docker run --rm -v $HOME:/root/.cache/ aquasec/trivy:0.17.2 -q image --exit-code 1 --severity CRITICAL --light $BASE_IMAGE

    # Trivy scan result processing
    exit_code=$?
    echo "Exit Code : $exit_code"

    # Check scan results
    if [[ "${exit_code}" == 1 ]]; then
        echo "Image scanning failed. Vulnerabilities found"
        exit 1;
    else
        echo "Image scanning passed. No CRITICAL vulnerabilities found"
    fi;
