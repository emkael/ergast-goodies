#!/bin/bash
pushd $(dirname $0) > /dev/null
if [ ! -f ../fetcher/f1db.sql ]
then
    ../fetcher/fetch.sh
fi
< ../fetcher/f1db.sql mysql "$@"
popd > /dev/null
