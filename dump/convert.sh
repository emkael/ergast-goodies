#!/bin/bash
grep -E '(^(INSERT INTO|(CREATE|DROP) TABLE) )|([,;\)]$)' $1 | # throw away comments and empty lines, mainly
    grep -v -E '^/\*' | # throw away comment-like directives which end in a semicolon
    grep -v -E '^(UN)?LOCK TABLES' | # MySQL-specific table locks
    grep -v -E '^\s+KEY' | # getting rid of non-primary key indices
    sed 's/ AUTO_INCREMENT.*\([,;]\)$/\1/g' | # getting rid of auto-increments
    sed 's/UNIQUE KEY[^(]*/UNIQUE/g' | # SQLite syntax of unique keys
    sed 's/) DEFAULT CHARSET.*;$/);/g' | # MySQL-specific leftovers for tables without auto-increment
    sed s/"\\\'"/\'\'/g | # single-quote escaped as '' instead of \'
    sed -e '/,\s*$/{N;s/,\s*\n)/\n)/g;P;D}' # now, here be dragons.
# for every line ending in comma, it appends the next line to sed's buffer
# then, trims comma from end of the first line
# if the second line begins with a closing paren
# finally, prints out the first line and removes it from buffer,
# allowing to proceed to the next line
