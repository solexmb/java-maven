if grep -i "EXPOSE" Dockerfile; then
  exit 1 # SomeString was found
fi
