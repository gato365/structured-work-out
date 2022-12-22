library(tidyverse)
library(lubridate)
weight_df = readxl::read_xlsx("~/Important_Files/Life/emans_health.xlsx",
                              sheet = 1) %>% 
  select(Date,Weight_AM) %>% 
  mutate(Date = as.Date(Date, "GMT"))

workout_df = readxl::read_xlsx("~/Important_Files/Life/emans_health.xlsx",
                               sheet = 2) %>% 
  filter(is_power == 1,`completion of workout` == 'Yes')

