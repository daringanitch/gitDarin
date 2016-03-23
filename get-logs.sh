#!/bin/bash
#var is the server id of amazon instance
var=$( ec2-metadata -o | cut -f 2 -d ':' |tr -d ' ' )

aws s3 sync (your directory here)  s3://(s3 directory here)/$var
