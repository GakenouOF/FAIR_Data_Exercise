library(tidyverse)

#Loading the Canadian Principal Crops dataset. The original dataset and detailed description can be found at: 
#https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3210035901. However, i will use the clean and subsetted version
#by the Skills Network Labs available at: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-RP0203EN-SkillsNetwork/labs/Practice%20Assignment/Annual_Crop_Data.csv


crop_df <- read.csv('https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-RP0203EN-SkillsNetwork/labs/Final%20Project/Annual_Crop_Data.csv', 
                    colClasses = c(YEAR = 'character'))

# There are four types of crop: Barley, Canola, Rye and Wheat. I will subset the data to have only information on Barley for the year 1965 - 1967

crop_df_sub <- crop_df %>%
  filter(CROP_TYPE == 'Barley', YEAR %in% c('1965-12-31', '1966-12-31', '1967-12-31'))

# A bar graph to show the average yield of Barley for Alberta, Canada and Saskatchewan in the year 1965 - 1967
crop_bar <- ggplot(crop_df_sub, aes(x = YEAR, y = AVG_YIELD, fill = GEO)) +
  geom_bar(stat = "identity", color = "black", position = position_dodge())
crop_bar