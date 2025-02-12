#!/bin/bash

# Start the infinite.sh script in the background
sh infinite.sh &

# Wait for a few seconds to let the infinite.sh script run
sleep 5

# Terminate the infinite.sh script
pkill -f infinite.sh

# Notify the user that the infinite.sh script has been terminated
echo "The infinite.sh script has been successfully terminated."