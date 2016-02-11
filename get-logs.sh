#!/bin/bash
var=$( ec2-metadata -o | cut -f 2 -d ':' |tr -d ' ' )

aws s3 sync /opt/wildfly/standalone/log/  s3://wholeloan-auction-temp/development/logs/sit/$var


*/15 * * * * /root/get-logs.sh >/dev/null 2>&1
