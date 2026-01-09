#!/bin/bash

key=""

while [ $# -gt 0 ]; do
	key="$key$1 "
	shift
done

key="${key% }"

echo "/tmp/$key" | tr ' ' '\n' >> key
chmod 0600 key
