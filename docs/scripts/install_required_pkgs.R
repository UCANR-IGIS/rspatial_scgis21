## Required packages
pkgs_req <- c("sp", "sf", "tmap", "tmaptools", "leaflet", "ggmap", "maptools", 
              "RColorBrewer", "raster", "maps", "tidyverse",  "jsonlite", 
              "rasterVis", "GISTools", "nngeo", "lwgeom", "devtools", 
              "conflicted", "tigris", "tidycensus", "stars",
              "googlesheets4", "httr", "rjson", "RSocrata", "usethis")

pkgs_missing <- pkgs_req[!(pkgs_req %in% installed.packages()[,"Package"])]

if (length(pkgs_missing)) install.packages(pkgs_missing, dependencies=TRUE)

## See which ones are missing
(pkgs_missing <- pkgs_req[!(pkgs_req %in% installed.packages()[,"Package"])])

## Install missing ones
if (length(pkgs_missing)) install.packages(pkgs_missing, dependencies=TRUE)

## Re-run the check for missing packages
pkgs_missing <- pkgs_req[!(pkgs_req %in% installed.packages()[,"Package"])]
if (length(pkgs_missing)==0) cat("ALL PACKAGES WERE INSTALLED SUCCESSFULLY \n")


