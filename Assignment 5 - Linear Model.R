require( mosaic )


# ********** GENERATE PLOT FOR THE POVERTY AND MEDIAN HOUSEHOLD INCOME **********


county = read.csv( "countyComplete.csv" )

# plot to map poverty with median household income.

plot(county$median_household_income,county$poverty, col = "Blue", type = "p")


# ********** CALCULATE CORRELATION BETWEEN TWO VARIABLES **********


cor(county$median_household_income,county$poverty)


# ********** GENERATE THE LINEAR MODEL AND DIPLAY ON PLOT **********


# generate the linear model for poverty with median hiusehold income

model = lm(county$poverty~county$median_household_income)

# display the model on the plot


# ********** GENERATE SUMMARY STATISTICS FOR THE LINEAR MODEL **********


summary(model)


# ********** GENERATE MULTIPLE LINEAR MODEL USING HOUSE OWNERSHIP VARIABLE **********


model1 = lm(county$poverty~county$median_household_income+county$home_ownership)

summary(model1)