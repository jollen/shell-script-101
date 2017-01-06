#!/bin/bash

# Exit immediately when a command fails.
set -e

# The bash shell normally only looks at the exit code of the last command of a pipeline. 
# Sets the exit code of a pipeline to that of the rightmost command to exit 
# with a non-zero status, or zero if all commands of the pipeline exit successfully.
set -o pipefail

# Treat unset variables as an error and exit immediately
set -u

echo -e "\033[33m
Hello
\033[0m"