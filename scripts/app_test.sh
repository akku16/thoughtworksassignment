#!/bin/bash

echo "========================================================"
echo "STEP 3 - Testing if the application is up and running"
echo "========================================================"

echo "curl -I -X GET http://localhost/"
curl -I -X GET http://localhost/
