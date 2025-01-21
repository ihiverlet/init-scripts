#!/bin/sh

curl -o- https://raw.githubusercontent.com/ihiverlet/init-scripts/refs/heads/main/config.sh | bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

nvm install 23
npm install -g npm
