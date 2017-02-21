#!/bin/bash
echo -n "Enter file name : "
read myfile
echo -n "Are you sure ( yes or no ) ? "
read confirmation
confirmation="$(echo ${confirmation} | tr 'A-Z' 'a-z')"
if [ "$confirmation" == "yes" ]; then
   [ -f $myfile ] &&  /bin/rm $myfile || echo "Error - file $myfile not found"
else
   : # do nothing
fi
