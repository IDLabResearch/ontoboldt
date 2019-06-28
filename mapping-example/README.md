
# Namespaces
    
* I make use of the FRBR conceptual model: `@prefix frbr: <http://purl.org/vocab/frbr/core#> .`
* The dataset (mapping result) should has this namespace: `@prefix obt: <https://w3id.org/ontoboldt/ns/ontoboldt#> .`
* The tiny vocabulary used to describe some concepts: `@prefix eng: <https://w3id.org/ontoboldt/ns/engineering-vocabulary#> .`
* Also some dcterms: `@prefix dct: <http://purl.org/dc/terms/> .`

# Creating the Knowledge Graph

## Requirements

1. `./download-mapper.sh`
1. `npm install -g graphy

## Building the graph
1. `./download-sheets.sh`
1. `./map.sh`
1. `./publish.sh`


# CSV files

The original [GoogleSheet](https://docs.google.com/spreadsheets/d/1ttQ4Y_hsqVoOIU85oBNmL1p9WMPHQ_6-bqQoBoEWCsc/edit#gid=1859796660) has different sheets.
Each sheet represents one CSV file.
Each row is identified by an ID which is also used for interlinking between
the different CSV files, and thus is similar to normalized tables in
a relational database.


In general,

* name columns should mapped to an English language tagged string, with the predicate `rdfs:label`.
* description columns should be mapped to an English language tagged string, with the predicate `dct:description`
* input columns for processes, activities and tasks refer to `Information Items Expressions`
* Output columns for processes, activities and tasks refer to `Information Items Expressions`
* Some cells contain a comma separated list of entries (sometimes with sometimes without space), but there should be a function for that because Pieter Heyvaert once mapped something like this for me #FunctionHub.
* The `Source` column so far contains strings, but that will become also an ID linking to rows in another CSV
* The `Responsible` columns contain IDs linking to the `Roles` CSV

## Procedures

This CSV holds data about `eng:Procedure` instances, which represent a
generic way to represent processes, activities and tasks (see other CSVs).
Basically each process, activity or task refers to one or more of these procedures.

* The 'source' column refers to an instance of the *Publications CSV file*

## Information Item

These items are similar to the procedures, in the sense that they serve as
generic representation of the `Information Item Expressions` CSV.

## Processes NeOn

Each row is an instance of `eng:Process` and refers via `frbr:realizationOf`
('realization Of' column) to one or more related procedures from the *Procedure CSV file*.
(Please see GitLab issues for how to deal with the `Related activities` column)
## Activities NeOn

Each row is an instance of `eng:Activity` and refers via `frbr:realizationOf`
('realization Of' column) to one or more related procedures from the *Procedure CSV file*.
(Please see GitLab issues for how to deal with the `Related tasks` column)

## Tasks NeOn

Each row is an instance of `eng:Task` and referes via `frbr:realizationOf`
('realization Of' column) to onre or more related procedures from the *Procedure CSV file*.
There is a column `Related Activity`. This information is redundant,
as activities link to their tasks.

## Information Items NeOn

Each row is an instance of `eng:InformationItemExpression` and referes via `frbr:realizationOf`
('realization Of' column) to the related Information Item from the *Information Item CSV file*.

## Roles 

Each row is an instance of `eng:Role`

## Publications

Each row is an instance of `eng:Publication`



