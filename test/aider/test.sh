#!/bin/bash

set -e

# Optional: Import test library
source dev-container-features-test-lib

# Definition specific tests
check "installed" which ctags | grep "ctags"
check "installed" which aider | grep "aider"

# Report result
reportResults