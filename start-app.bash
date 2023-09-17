#!/bin/bash

# Start application 1
cd /ci-cd-project
pm2 start "yarn start" --name "ci-cd"


# Keep the script running to keep the container running
tail -f /dev/null
