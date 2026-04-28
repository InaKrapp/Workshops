# 3. Load the data
# For a real workshop, it's best to provide this as a CSV.
# Here is the code to generate the file you would provide to attendees.
# ---
library(nycflights13)
library(tidyverse)
flights_data <- flights %>%
  left_join(airports, by = c("origin" = "faa")) %>%
  rename(origin_lat = lat, origin_lon = lon) %>%
  left_join(airports, by = c("dest" = "faa")) %>%
  rename(dest_name = name.y, dest_lat = lat, dest_lon = lon, origin_name = name.x, tzone_dest = tzone.y, 
         tzone_origin = tzone.x) %>%
  filter(!is.na(dest_lat)) %>% # Remove flights to airports not in our airports table
  select(month, day, origin, dest, dest_name, origin_name, origin_lat, origin_lon, dest_lat, dest_lon, 
         carrier, dep_delay, tzone_dest, tzone_origin, dep_time, arr_time, tailnum)
#
write.csv(flights_data, "nyc_flights_2013.csv", row.names = FALSE)
# ---