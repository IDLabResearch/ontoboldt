

# Namespaces
    
* I make use of the FRBR conceptual model: `@prefix frbr: <http://purl.org/vocab/frbr/core#> .`
* The dataset (mapping result) should has this namespace: `@prefix obt: <https://w3id/ontoboldt/ns/ontoboldt#> .`
* The tiny vocabulary used to describe some concepts: `@prefix eng: <https://w3id/ontoboldt/ns/engineering-vocabulary#> .`


# CSV files

The original [GoogleSheet](https://docs.google.com/spreadsheets/d/1ttQ4Y_hsqVoOIU85oBNmL1p9WMPHQ_6-bqQoBoEWCsc/edit#gid=1859796660) has different sheets.
Each sheet represents one CSV file.
Each row is identified by an ID which is also used for interlinking between
the different CSV files, and thus is similar to normalized tables in
a relational database.


In general,

* name columns should mapped to an English language tagged string, with the predicate `rdfs:label`.
* description columns should be mapped to an English language tagged string, with the predicate `dct:description`
* input columns for processes, activities and tasks refer to `Information Items`
* Output columns for processes, activities and tasks refer to `Information Items`
* **There are special CSV files for example for NeOn processes, and activities, and tasks, input/output information items from these CSVs refer to the NeOn Information Items CSVs. Anyway, IDs are unique over all CSV files

## Procedures

This CSV holds data about `eng:Procedure` instances, which represent a
generic way to represent processes, activities and tasks (see other CSVs).

* The 'source' column refers to an instance of the *Publications CSV file*

## Information Item

## Processes NeOn

Each row is an instance of `eng:Process` and refers via `frbr:realizationOf`
('realization Of' column) to the related procedure from the *Procedure CSV file*.

## Activities NeOn

Each row is an instance of `eng:Activity` and refers via `frbr:realizationOf`
('realization Of' column) to the related procedure from the *Procedure CSV file*.

## Tasks NeOn

Each row is an instance of `eng:Task` and referes via `frbr:realizationOf`
('realization Of' column) to the related procedure from the *Procedure CSV file*.

## Information Items NeOn

Each row is an instance of `eng:InformationItemExpression` and referes via `frbr:realizationOf`
('realization Of' column) to the related Information Item from the *Information Item CSV file*.

## Publications

Each row is an instance of `eng:Publication`



