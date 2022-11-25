if grep -i "console.log" Dockerfile; then
  exit 0 # SomeString was found
fi
