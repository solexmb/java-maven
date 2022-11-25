if grep -ir "console.log" .; then
  exit 1 # SomeString was found
fi
