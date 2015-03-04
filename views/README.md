Overview
========

views are jus a bunch of SQLs with view definitions for the [Ergast](http://ergast.com/mrd/db) database dump.

views are part of [ergast-goodies](README.md) toolset.

Requirements
============

Whatever floats your boat.

These views have been tested under MySQL 5.5/5.6, if you find any compatibility issues in earlier versions, you're more than welcome to report them.

Usage
=====

Just dump them into the database for sudden rush of clearly visible stats.

Under the hood
==============

The convention for all the views is to use `underscored_lowercase_names` for views and newly added fields, to distinguish ergast-goodies input from the original structure (which uses `camelCase` naming).

The views are split into files, which are fully independent, i.e. refer only to the original tables (or to each other, but only in order they're defined within the file).

`career_length.sql`
-------------------

Simple view which lists career length stats for each driver:

* length of career in races
* length of career in days
* age at the beginning of the career, in days
* age at the latest/last race, in days

[You can use these to produce such stats, for example.](http://www.reddit.com/r/formula1/comments/2xr3tw/who_do_you_think_will_get_their_first_win_next/cp2sjp2?context=1)

`champions.sql`
---------------

Two views resulting in a list of World Drivers' Champions and World Constructors' Champions for each season, copying all the fields from drivers/constructors tables from original database, with the addition of the season of championship.

Views assume ascending chronological order of raceId values for races in each season, and could be improved (but probably with a drop of performance) to select "last race of the season" (for which the standings are taken) by date.

`full_season_drivers.sql`
-------------------------

A bunch of views resulting in a list of drivers who drove every race of a season (`full_season_drivers`). Some interim views are being created and I don't know if these serve any purpose on their own:

* `driver_races` is there solely to eliminate the noise of shared drives and multiple entries in a race for a single driver
* `driver_season_races` aggregates races for each season for each driver; uses GROUP_CONCAT so the values are not quite useful
* same goes for `season_races` - a view which aggregates races by season

[Here's an example of use for these views.](http://www.reddit.com/r/formula1/comments/2v7hip/in_which_years_the_grid_featured_the_most_drivers/cofuaxt?context=1)

`podiums.sql`
-------------

First two views are very similar. Both `podium_sequences` and `podium_sets` list the podium for every race in the database. The first one keeps the order of finishing positions, the second one - does not. Useful to collect most frequent/most bizarre podiums.

The third view, `non_champion_nationality_podiums` , produces a complete lists of podiums which, at the time of occurence, included drivers from nations that produced no WDCs (yet).

[The last one was created to answer a question on r/F1Statistics](http://www.reddit.com/r/F1Statistics/comments/2kb6z3/question_for_the_last_16_years_the_championship/clk2wsl?context=2), as it's often the case with these snippets.

`teammates.sql`
---------------

Two fairly straght-forward views.

The first one, `teammates`, produces all teammate (i.e. drivers driving in the same race for the same constructor) pairs, with the result for each partnership.

The second one, `teammate_tally`, aggregates these results into head-to-head comparison, where only double-finishes are being counted.

`team_switches.sql`
-------------------

Probably the strangest and least useful set of interim views of the entire toolset.

The final result, the `driver_team_switches` view, shows each time a driver switched teams, with constructors' championship position for both teams at the time of the switch. This may be used to analyze switches from backmarking teams to top teams or events in which driver made a move that was viewed as a backwards move, but kinda worked out, etc.

To arrive at that set of data, some views are created:

* `constructor_championship_results` - a simple listing of finishing position in the Constructors' for each constructor every season (this assumes the same thing about ascending raceId values as views from `champions.sql`)
* `season_driver_constructor` - every triplet of year, driver and constructor the driver drove for in specified year
* `next_season_driver_constructor` - the strangest one, every triplet of year, driver and constructor the driver drove for in a *following* year; finding use for that view without the context is left as an exercise for the reader