#!/bin/bash

cd ..


for file in ./files/*; do
    if [ -f "$file" ]; then

        first_letter=$(basename "$file" | cut -c 1 | tr '[:upper:]' '[:lower:]')
      
        mv "$file" "./$first_letter/"
    fi
done
