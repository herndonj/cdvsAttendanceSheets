library(googledrive)
library(googlesheets4)
library(profvis)
drive_auth()
gs4_auth(token=drive_token())

for(i in 1:nrow(dvs_cal_tbl))
{
    `Attended (x or blank)` <- ""
    `Registration Status (Registered, Waitlist, or Walk-in)` <- ""
    `Workshop Date` <- c(dvs_cal_tbl[[i,2]])
    `Workshop Name` <- c(dvs_cal_tbl[[i,3]])
    WorkshopID <- c(dvs_cal_tbl[[i,1]])
    `First Name` <- ""
    `Last Name` <- ""
    Email <- ""
    `Booking Made` <- ""
    Attendance <- ""
    `Are you affiliated with Duke University, Duke Medical Center, DCRI, or another Duke group?` <- ""
    `Academic Status (or other)` <- ""
    `Discipline or Affiliation` <- ""
    `Institutes, Initiatives, or Program Affiliation` <- ""
    `Where did you hear about this event?` <- ""
    `Have you consulted with CDVS before this workshop?` <- ""
    `Would you like to receive more information about DVS events and training?` <- ""
    `I'm interested in registering for this workshop because:` <- ""
    `If other, describe below:` <- ""
    
    ex <- tibble(`Attended (x or blank)`,`Registration Status (Registered, Waitlist, or Walk-in)`,`Workshop Date`,`Workshop Name`, WorkshopID, `First Name`, `Last Name`, Email, `Booking Made`, Attendance, `Are you affiliated with Duke University, Duke Medical Center, DCRI, or another Duke group?`, `Academic Status (or other)`, `Discipline or Affiliation`, `Institutes, Initiatives, or Program Affiliation`, `Where did you hear about this event?`, `Have you consulted with Data and Visualization Services before this workshop?`, `Would you like to receive more information about DVS events and training?`, `I'm interested in registering for this workshop because:`, `If other, describe below:`)
    #ex2 <- tibble(`First Name`, `Last Name`, Email, `Booking cancelled`)
    fn1 <- paste0("attendance_sheets/spring_2021/",dvs_cal_tbl[[i,3]],"_",dvs_cal_tbl[[i,2]],".csv")
    fn2 <- paste0(dvs_cal_tbl[[i,3]],"_",dvs_cal_tbl[[i,2]])
    #fn2 <- paste0(dvs_cal_tbl[[i,3]],"_",dvs_cal_tbl[[i,2]],".csv")
   
    gs4_create(fn2, sheets = ex)
    # When I run this script without a pause- google fails
    pause(30)
}
