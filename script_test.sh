echo "This is a test."

if [ $? -eq 0 ]; then
    echo "The previous command succeeded. impossible to read this"
else
    echo "The previous command failed. I'm choosing this file"
fi
