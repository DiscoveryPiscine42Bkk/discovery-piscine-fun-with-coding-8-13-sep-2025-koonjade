#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No arguments supplied"
else
    for arg in "$@"
    do
        dirname="ex$arg"
        if [ -d "$dirname" ]; then
            echo "Directory $dirname already exists"
        else
            mkdir "$dirname"
            echo "Created $dirname"
        fi
    done
fi