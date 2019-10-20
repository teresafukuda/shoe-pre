########################################################
## Pre-Survey Wear Test Data Management 
## ... an attempt to import the data and make it into a usable form for eas[ier] analysis
## by Teresa
## because I'm bored
##########################################################

# Part I. Load packages and import data

library(tidyverse) # hello tidyverse
library(janitor) # load janitor to clean up dataframe
library(lubridate) # load lubridate to work with dates and times

# I made this so that you can download the data from the Google Drive as a csv and import directly into here, no edits

pre_survey <- read_csv("Pre Survey Data - Sheet1.csv") 


#########################################################

# Part II. Clean up data

clean_pre <- pre_survey  %>% 
  rename("name"= 'X1') %>% 
  clean_names(.)


########################################################

# Part III. Preliminary data visualization

age_vis <- ggplot(clean_pre, aes(x=age)) + 
  geom_histogram()

weight_vis <- ggplot(clean_pre, aes(x=weight)) + 
  geom_histogram()

end_of_life_vis <- ggplot(clean_pre, aes(x=question_18)) + 
  geom_histogram(stat='count')

end_of_life_vis
