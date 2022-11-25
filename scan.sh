if grep -i "EXPOSE" Dockerfile; then
  exit 0 # SomeString was found
fi
