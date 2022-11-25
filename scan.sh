if grep -i "console.log" Dockerfile; then
  exit 1 # SomeString was found
fi
