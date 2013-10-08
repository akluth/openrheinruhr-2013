#!/bin/bash
#
# Starts a basic web server on the port specified
# and opens the presentation with the browser specified.
#
# ./serve.sh firefox 3000 -> http://localhost:3000 in Firefox
#
# Copyright 2012 Eric Bidelman <ebidel@gmail.com>

port=8000
browser=$1
if [ $# -eq 2 ]
then
  port=$2
fi

$1 http://localhost:$port/template.html && python -m http.server $port;
