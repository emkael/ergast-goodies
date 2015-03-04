Overview
========

import provides wrapper scripts to import the [Ergast](http://ergast.com/mrd/db) database dump to local database, and apply technical and factual fixes.

import is part of [ergast-goodies](../README.md) toolset.

Requirements
============

* pushd/pop for sane working directory management (the script works in its own directory)
* mysql command-line client
* [fetcher](fetcher/README.md) (optional)

Usage
=====

    ./00_base_import.sh [MYSQL PARAMETERS]

    ./01_integrity_import.sh [MYSQL PARAMETERS]

    mysql [MYSQL PARAMETERS] < ./10_fixes.sql


Under the hood
==============

**No database credentials or connection parameters are being stored or processed by the utility.** These are just wrappers, proxying all the parameters to `mysql` client invokation.

Running `00_base_import.sh` imports just the basic, raw Ergast dump. If you already have the database copied locally, you may as well skip it.

The script looks for f1db.sql dump in [fetcher](fetcher/README.md)'s directory and feeds the `mysql` command with its content, relaying all command line parameters to `mysql`.

If the DB dump is not present, the script attempts to fetch it via [fetcher](fetcher/README.md).

The `01_integrity_import.sh` script does the heavy lifting of improving the database under the hood, so it could be used with modern RDBMS techniques. Its main purpose is to create indexes and proper foreign keys constraints in the database.

All the script does is running all the 01?_*.sql scripts against selected database, in alphabetical order (relying on bash wildcard expansion, [which is supposed to guarantee alphabetical order](http://serverfault.com/questions/122737/in-bash-are-wildcard-expansions-guaranteed-to-be-in-order). The SQL scripts are:

* `01a_integrity_fixes.sql` - fixing some of the values which would otherwise conflict with creating foreign key constraints (usually temporarily, since these issues are reported to the upstream Ergast maintainers)
* `01b_indexes.sql` - creating indexes on some of the columns (chosen arbirtarily, but hopefully using common sense)
* `01c_constraints.sql` - creating foreign key constraints on all foreign keys in the database

Provided, there's also the `10_fixes.sql` SQL script. It contains fixes for factual errors in the database which have been [reported upstream](http://ergast.com/mrd/bugs), but are yet to have fixes available in the dump.

Note that some data in the original database could easily be normalized - countries, nationalities and such things would work beatifully in a dictionary. I've decided not to include any such normalization for backwards compatibility - all of the queries against the original, vanilla database, work identically against the tweaked database.
