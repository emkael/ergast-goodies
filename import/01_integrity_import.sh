#!/bin/bash
pushd $(dirname $0) > /dev/null
cat 01?_*.sql | mysql "$@"
popd > /dev/null
