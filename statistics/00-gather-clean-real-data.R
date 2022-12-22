library(tidyverse)
library(lubridate)
weight_df = readxl::read_xlsx("~/Important_Files/Life/emans_health.xlsx",
                              sheet = 1) %>% 
  select(Date,Weight_AM) %>% 
  mutate(Date = as.Date(Date, "GMT"))

workout_df = readxl::read_xlsx("~/Important_Files/Life/emans_health.xlsx",
                               sheet = 2) %>% 
  filter(is_power == 1,`completion of workout` == 'Yes') %>% 
  select(Date,muscles_group,exercises,`set 1 (lbs. - #)`,
         `set 2 (lbs. - #)`,`set 3 (lbs. - #)`) %>% 
  mutate(muscles_group = case_when(
    muscles_group == "Shoulders" ~ "Back",
    TRUE ~ muscles_group
  ) 
  )

