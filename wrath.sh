#!/bin/sh
echo "Killing processes like [ $1 ]..."

TFILE="/tmp/$(basename $0).$$.tmp"

ps aux | grep $1 > $TFILE
pids=`cut -f 6 -d ' ' $TFILE`
pids_count=`echo $pids | wc -w`
pids_minus_self=`expr $pids_count - 2`

echo "Found $pids_minus_self processes."

if [ $pids_minus_self != '0' ]
then
  kill -9 $pids
  echo "$pids_minus_self processes are dead."
fi

rm $TFILE
