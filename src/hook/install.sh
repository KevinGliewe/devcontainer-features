#!/usr/bin/env bash

set -e

# Get the run command from the environment variable, or default to "printenv"
RUN="${RUN:-"printenv"}"

# Run the command and capture its output
OUTPUT="$($RUN)"

# Get the return code of the command
RETURN_CODE=$?

if [ $RETURN_CODE -ne 0 ]; then
    echo "Command '$RUN' failed with return code $RETURN_CODE"
    exit $RETURN_CODE
fi