#!/bin/bash

# configure core-site.xml
sed -e "s|AWS_REGION|$AWS_REGION|g" /root/core-site.xml.base > ./conf/core-site.xml
sed -i -e "s|S3_ACCESS_KEY|$S3_ACCESS_KEY|g" ./conf/core-site.xml
sed -i -e "s|S3_SECRET_KEY|$S3_SECRET_KEY|g" ./conf/core-site.xml

./bin/drill-embedded
