# CDVS Attendance Sheet Code
This repository contains two scripts that pull workshop data from Springshare's LibCal system into a set of dataframes that are later loaded into Google Sheets. 

The contents of this repository include:

- rvestLibCalCode.R - scraper code that pulls workshop information from the LibCal API
- attendance_sheets_generator.R - this R code converts the dataframe created in rvestLibCalCode.R into a set of attendance sheets that are loaded into google drive
