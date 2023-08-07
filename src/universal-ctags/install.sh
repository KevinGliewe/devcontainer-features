#!/bin/bash
set -e

dpkg -l | grep universal-ctags || (apt update && apt install universal-ctags -y -qq)