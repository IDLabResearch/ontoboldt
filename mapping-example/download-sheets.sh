#!/usr/bin/env bash

SHEET="https://docs.google.com/spreadsheets/d/1ttQ4Y_hsqVoOIU85oBNmL1p9WMPHQ_6-bqQoBoEWCsc"

SHEETNAME[0]="Procedures"
SHEETNAME[1]="Information%20Items"
SHEETNAME[2]="Processes"
SHEETNAME[3]="Activities"
SHEETNAME[4]="Tasks"
SHEETNAME[5]="Roles"
SHEETNAME[6]="Information%20Items%20Expression"
SHEETNAME[7]="Publications"
SHEETNAME[8]="Techniques"
SHEETNAME[9]="Glossary"
SHEETNAME[10]="Life%20Cycle%20Activity%20Groups"
SHEETNAME[11]="Methods"

for i in "${SHEETNAME[@]}"
do
    curl "${SHEET}/gviz/tq?tqx=out:csv&sheet=${i}" > "${i}.csv"
done