#!/bin/bash
# Author: lps
# Created on: 20160329
# Purpose: Parse through /var/log/messages to proactively alert for CIFS errors


E_SUCCESS="0"
E_WARNING="1"
E_CRITICAL="2"
E_UNKNOWN="3"

# LOG file we're parsing
LOG="/var/log/messages"
# What we're looking for as indicators
#SEARCH='NT_STATUS_LOGON_FAILURE\|Send error\|SessSetup\|CIFS VFS'
SEARCH='NT_STATUS_LOGON_FAILURE'

# Calculate last hour and this hour
PRE=$(date "+%b %d %k" -d "1 hour ago")
CUR=$(date "+%b %d %k")
HR="$PRE\|$CUR"

# Default return code
RET=$E_SUCCESS

# Search the log file
OUT=$(grep "$HR" $LOG | grep "$SEARCH")
# Count how many hits we got
COUNT=$(grep "$HR" $LOG | grep -c "$SEARCH" )

# If we found something, WARN
if [ "$COUNT" -gt 0 ]; then
        RET=$E_WARNING

        echo "Last 5 lines of errors, if available:"
        OUT=$(echo "$OUT" | tail -5)
else
        OUT="No CIFS errors found in logs"
fi


# Return the appropriate status code
echo "$OUT"
exit $RET
