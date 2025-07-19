# Contraceptive Choices Across Nigeria: How Education and Wealth Shape Family Planning Decisions

if (!require (pacman)) install.packages("pacman")

pacman::p_load(tidyverse, here, haven, janitor)

# importing variables of importance to the study and converting them to factors 
data <- read_dta(here("data/NGIR7BFL.DTA"),
                         col_select = c(v312,v313,v364,v361,v362,v106,v107,v133,v155,v190,v191,v013,v025,v024,v130,v218,v501,v701,v705,v502,v503, v323, v323a,v131,v130)) %>% 
  haven::as_factor()


# Renaming of variables for easy identification and making sure they are all in consistent format with the help  of clean_names()
data_renamed <- data %>%
  rename(current_contraceptive_method = v312,
         Current_use_by_method_type = v313,
         Pattern_of_use = v361,
         Intention_to_use = v362,
         Contraceptive_use_and_intention = v364,
         Brand_of_pil_used = v323,
         brand_of_condom_used = v323a,
         Current_marital_status = v501,
         C_f_never_in_union = v502,
         Number_of_unions = v503,
         Husband_education_level = v701,
         husband_occupation = v705,
         Number_of_living_children = v218,
         Wealth_index_combined = v190,
         Wealth_index_factor_score_combined = v191,
         Literacy = v155,
         Education_in_single_years = v133,
         Ethnicity = v131,
         Religion = v130,
         Highest_educational_level = v106,
         Highest_year_of_education = v107,
         Region = v024,
         Type_of_place_of_residence = v025,
         Age_in_5_year_groups = v013) %>% 
  clean_names()

# Exploratory data analysis
# quick overview of the data
glimpse(data_renamed)
skimr::skim(data_renamed)
summary(data_renamed)


count(data_renamed, current_use_by_method_type, sort = T)


# 
# 1. Main Research Questions:
#   
#   How does education level influence contraceptive choice and use among Nigerian women?

head(data)

#   What role does household wealth play in determining family planning decisions?
#   How do education and wealth interact to shape contraceptive behavior?
  
  


# 1. Main Research Questions:
#   
#   How does education level influence contraceptive choice and use among Nigerian women?
#   What role does household wealth play in determining family planning decisions?
#   How do education and wealth interact to shape contraceptive behavior?
#   
#   2. Specific Analytical Questions:
#   Education-Focused:
#   
#   Are more educated women more likely to use modern contraceptive methods?
#   Does education influence the type of contraceptive method chosen?
#   How does partner's education affect contraceptive decision-making?
# 
# Wealth-Focused:
# 
# Do wealthier women have greater access to and use of modern contraceptives?
# Are there differences in method preference across wealth quintiles?
# How does wealth affect unmet need for family planning?
# 
# Geographic & Demographic:
# 
# How do contraceptive patterns vary across Nigeria's six geopolitical zones?
#   Are there urban-rural differences in how education and wealth influence contraceptive use?
#   How do age and parity modify the relationship between education/wealth and contraceptive use?
#   
#   Intersectional Analysis:
#   
#   Which combinations of education and wealth levels show the highest contraceptive prevalence?
#   Do the effects of education differ across wealth levels?
#   How do religious and cultural factors interact with education and wealth?
#   
  
demo = read.delim("clipboard")

demo2 <- read.delim("clipboard")  

demo %>% 
  summari
  
  
  
  