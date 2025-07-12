#!/bin/bash
echo "Uploading sample log to S3..."
aws --endpoint-url=http://localhost:4566 s3 cp ./sample.log s3://demo-logs-bucket/