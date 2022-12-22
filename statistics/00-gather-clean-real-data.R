library(tidyverse)
library(lubridate)

## Import Weight Data Transform
weight_df = readxl::read_xlsx("~/Important_Files/Life/emans_health.xlsx",
                              sheet = 1) %>% 
  select(Date,Weight_AM) %>% 
  mutate(Date = as.Date(Date, "GMT"))


## Import Work out Data & Transform
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



colnames(workout_df)[4:6] = c("set_1","set_2","set_3")


## Transform workout Data
mod_1_workout_df = workout_df %>% 
  separate(set_1,into = c("set_1_lbs","set_1_reps"),sep = "-",remove = TRUE) %>% 
  separate(set_2,into = c("set_2_lbs","set_2_reps"),sep = "-",remove = TRUE) %>% 
  separate(set_3,into = c("set_3_lbs","set_3_reps"),sep = "-",remove = TRUE) 



write.csv(mod_1_workout_df,"workout_df.csv",row.names = FALSE)
write.csv(weight, "weight_df.csv",row.names = FALSE)