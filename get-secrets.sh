#!/bin/sh

fail() {
  echo "ERROR: $*" >&2
  exit 1
}

[ -z "$1" ] && fail "Pass lockbox id as first param"

yc lockbox payload get --id $1 | $(dirname $0)/lockbox-to-env.rb
