#!/bin/bash
# send.sh - sends the mail.
# Uses msmtp package
# $1 - body of email message - expected in draft.[1,2 .. ,n]
# $* all participants to rx email

MAILER=msmtp
LOGFILE=send.log
body=$1
shift
CMD="$MAILER body: $body rcpts: $*"
echo $CMD >> $LOGFILE
$MAILER < ${body} ${*}
#
echo $MAILER terminated with status $? >> $LOGFILE




