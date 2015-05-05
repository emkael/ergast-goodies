#!/bin/bash
pushd $(dirname $0) > /dev/null
wget -N http://ergast.com/downloads/f1db.sql.gz -q
if [[ $? != 0 ]]; then
    if [[ -f f1db.sql.gz ]]; then
        echo "Warning: could not fetch new DB, using archived version"
    else
        echo "Error: could not fetch DB"
        popd > /dev/null
        exit 1
    fi
fi
if [[ f1db.sql.gz -nt f1db.sql ]]; then
    echo "Found new ErgastDB version"
    zcat f1db.sql.gz | sed 's/ ENGINE=MyISAM//' > f1db.sql
    find -name f1db.sql.gz -printf '%f: %Td-%Tm-%TY %TH:%TM, %s bytes\n'
    touch -r f1db.sql.gz f1db.sql
fi
popd > /dev/null
