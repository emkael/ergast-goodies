#!/bin/bash
pushd $(dirname $0) > /dev/null
wget -N http://ergast.com/downloads/f1db.sql.gz -q
if [[ f1db.sql.gz -nt f1db.sql ]]
then
    echo "New ErgastDB version fetched"
    zcat f1db.sql.gz | sed 's/ ENGINE=MyISAM//' > f1db.sql
fi
popd > /dev/null
