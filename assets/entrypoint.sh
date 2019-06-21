#!/bin/sh
set -eu

confd -onetime -backend env

if [ -n "$@" ]; then
	exec $@
fi

set -x
cat /tmp/myconfig.conf

