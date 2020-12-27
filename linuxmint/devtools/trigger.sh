#!/bin/bash

MAX=$1

for (( c=1; c<=MAX; c++ ))
do
   curl -X PUT http://localhost:2000/product.service/execution/single/apple > /dev/null 2>&1 &
done
