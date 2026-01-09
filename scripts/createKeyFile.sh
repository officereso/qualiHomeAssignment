#!/bin/bash

key=""

while [ $# -gt 0 ]; do
	key="$key$1 "
	shift
done

key="${key% }"

echo "$key" | sed -E '
						s/-----BEGIN RSA PRIVATE KEY-----/-----BEGIN_RSA_PRIVATE_KEY-----/;
						s/-----END RSA PRIVATE KEY-----/-----END_RSA_PRIVATE_KEY-----/;
						s/ /\n/g;
						s/-----BEGIN_RSA_PRIVATE_KEY-----/-----BEGIN RSA PRIVATE KEY-----/;
						s/-----END_RSA_PRIVATE_KEY-----/-----END RSA PRIVATE KEY-----/
						' > /tmp/key

export key
chmod 0600 /tmp/key
