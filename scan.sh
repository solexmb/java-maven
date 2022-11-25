if grep -i "name" yml-scan.yml; then
  exit 1 # SomeString was found
fi
