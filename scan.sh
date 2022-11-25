if grep -i -r "console.log" .; then
  exit 1 # SomeString was found
fi
