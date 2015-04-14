Overview
========

fetcher keeps the local copy of Ergast database dump (available from [Ergast website](http://ergast.com/mrd/db)) up to date, using timestamps declared in the HTTP headers.

The database dump is also slightly altered on unpacking, to get rid of MyISAM table storage engine, hard-coded in the dump. This allows an easy import into other storage engine database, like InnoDB.

fetcher is part of [ergast-goodies](../README.md) toolset.

Requirements
============

Since this bash script simply stitches together some tools used to retrieve and unpack the database dump, it requires these to work properly:

* pushd/popd for sane working directory management (the script works in its own directory)
* wget
* zcat
* sed
* find
* touch

Most of these tools are available by default in every Linux installation, the rest of it should be easily accessible from the package repository of your distribution of choice.

Usage
=====

Just run `fetcher.sh`.

The script takes no arguments.

Under the hood
==============

The script makes use of wget's timestamping feature. It attempts to download the f1db.sql.gz dump from Ergast website only if the declared timestamp of the file is newer than the local timestamp of the dump file.

The .sql.gz file is stored in script directory only for that purpose.

If the script is unable to connect to the remote server, that local copy is used instead.

If the archive is newer than the unpacked dump, which is stored in script directory as well, it unpacks the dump, erasing the storage engine declaration on the fly. The resulting .sql file is ready for import to the database of your choice.
