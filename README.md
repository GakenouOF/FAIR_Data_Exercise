# FAIR Data- Exercise

## Canadian Principal Crops dataset.

The original dataset and detailed description can be found [here] (https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3210035901). However, for the purpose of this exercise, the cleaned and subsetted version provided by the Skills Network Labs available [here] (https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-RP0203EN-SkillsNetwork/labs/Practice%20Assignment/Annual_Crop_Data.csv) was used to read the data in for analysis.

In the original dataset, there are four types of crops (Barley, Canola, Rye and Wheat). This was further subsetted to contain only Barley for three years (1965 - 1967).

## Result

The result showed that there was an increase in the average yield of barley from 1965 to 1966, which later declined in 1967. Overall, Alberta had the highest average yield of barley for the three years.

```{r error, fig.align = 'center', out.width = "100%", fig.cap = "A bar graph to show the average yield of Barley for Alberta, Canada and Saskatchewan in the year 1965 - 1967", echo=FALSE, warning=FALSE}
knitr::include_graphics(here::here("Fair_data", "cropbar.jpg"))  
```
