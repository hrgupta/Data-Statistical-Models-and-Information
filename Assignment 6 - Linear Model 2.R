require( mosaic )


### ********** READ DATA FROM THE DATASET **********

require( mosaic )

county = read.csv( "countyComplete.csv" )



### ********** GENERATE MULTIPLE LINEAR MODEL USING MEDIAN HOUSEHOLD INCOME AND PER CAPITA INCOME **********

# generate multiple linear model for poverty with median household income & per capita income

model = lm(county$poverty~county$median_household_income+county$per_capita_income)

# ********** GENERATE SUMMARY STATISTICS FOR THE MULTIPLE LINEAR MODEL **********

summary(model)



### ******** GENERATE SIMPLE LINEAR MODELS FOR EACH OF THE EXPLANATORY VARIABLE FPR COMPARISON *******

# generate simple linear model for poverty with median household income variable

m1 =lm(county$poverty~county$median_household_income)
summary(m1)

# generate simple linear model for poverty with per capita income variable

m2 =lm(county$poverty~county$per_capita_income)
summary(m2)

# generate simple linear model for poverty with home ownership variable

m3 =lm(county$poverty~county$home_ownership)
summary(m3)



## *********** GENERATE MULTIPLE LINEAR MODEL USING MEDIAN HOUSEHOLD INCOME AND HOME OWNERSHIP **********


# generate multiple linear model for poverty with per capita income & home ownership

model2 = lm(county$poverty~county$per_capita_income+county$home_ownership)

# ********** GENERATE SUMMARY STATISTICS FOR THE MULTIPLE LINEAR MODEL **********

summary(model2)
