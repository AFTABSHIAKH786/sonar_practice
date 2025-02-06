#!/bin/bash

set -e

#check for node runtime
check_node() {
    if ! command -v node &> /dev/null; then
        echo "Node is not installed"
    else 
        node --version
        echo "Node is installed on the system."
    fi
}

Name=Aftab

echo $Name

echo "Checking Node "
check_node

echo "Installing Dependencies"
npm install

echo "deleting the old dist folder"
rm -rf dist

echo "Building the project with default configuration"
npm run build

echo "Build created Sucessfully. 👍"