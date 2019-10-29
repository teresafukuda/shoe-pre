########################################################
## Pre-Survey Wear Test Data Management 
## ... an attempt to import the data and make it into a usable form for eas[ier] analysis
## by Teresa for FUTURE FOOTWEAR (the best)
## 
##########################################################

# Part I. Load packages and import data

library(tidyverse) # load tidyverse
library(janitor) # load janitor to clean up dataframe

# I made this so that you can download the data from the Google Drive as a csv and import directly into here, no edits

pre_survey <- read_csv("Pre Survey Data - Sheet1.csv") # might have to change import filename here!!!


#########################################################

# Part II. Clean up data ### Going to need more work either here or in google docs to make data more useful for some questions (or we can igmore them altogether)

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
  geom_histogram(stat='count') +
  theme(axis.text.x = element_text(angle = 90))


########################################################

# Might be interesting next to try to look at step data and combine with age/weight and see if there are any obvious trends

#######################################################



