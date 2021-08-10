# CDVS Attendance Sheet Code

**DEPRECATED**

![lifecycle:
deprecated](https://img.shields.io/badge/lifecycle-deprecated-orange "Lifecycle: deprecated")
There will be no further development of `library(dukeslides)`. 

## Try this INSTEAD...  the [new repo](https://github.com/data-and-visualization/dvs_cal) ![LifeCycle: Superseded by](https://img.shields.io/badge/lifecycle-superseded%20by-brightgreen "LifeCycle: Superseded by")


***

This repository contains two scripts that pull workshop data from Springshare's LibCal system into a set of dataframes that are later loaded into Google Sheets. 

The contents of this repository include:

- rvestLibCalCode.R - scraper code that pulls workshop information from the LibCal API
- attendance_sheets_generator.R - this R code converts the dataframe created in rvestLibCalCode.R into a set of attendance sheets that are loaded into google drive
