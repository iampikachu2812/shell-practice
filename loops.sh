#!/bin/bash
for package in $@
do
    echo "installing $package"
    dnf install $package -y
done