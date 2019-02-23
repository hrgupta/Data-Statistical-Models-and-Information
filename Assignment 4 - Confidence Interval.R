require( mosaic )

# ********** CALCULATE CI USING POPULATION STANDARD DEVIATION **********


county = read.csv( "countyComplete.csv" )


# calculate mean per capita income of population

mean_pop = mean(county$per_capita_income)


# check if per capita income is normally distributed

hist(county$per_capita_income)

boxplot(county$per_capita_income)


# calculate mean of sample from the per capita income population

one_sample <- sample(county$per_capita_income, size=310, replace=TRUE)

mean_sample = mean(one_sample)


# compute standard error of mean using population per capita standard deviation

pop_var <- function(x){sum((x-mean(x))^2)/(length(x))}

pop_sd = pop_var(county$per_capita_income)^0.5

pop_se = pop_sd/(310^0.5)


# calculate confidence interval using sample mean and SE using population per capita
# standard deviation

low_CI_pop = mean_sample - pop_se * 1.96

up_CI_pop = mean_sample + pop_se * 1.96

CI_pop = c(lower = low_CI_pop, upper = up_CI_pop)



# ********** CALCULATE CI USING SAMPLE STANDARD DEVIATION (OPENINTRO) **********


# compute standard error of mean using sample per capita standard deviation

samp_sd = var(one_sample)^0.5
  
samp_se = samp_sd/(310^0.5)
  

# calculate confidence interval using sample mean and SE using sample per capita
# standard deviation

low_CI_sam = mean_sample - samp_se * 1.96

up_CI_sam = mean_sample + samp_se * 1.96

CI_sam = c(lower = low_CI_sam, upper = up_CI_sam)



# ********** CALCULATE CI USING RESAMPLE STANDARD DEVIATION (KAPLAN) **********


# compute 1000 resamples of the one_sample

resamples <- mean(sample(one_sample, size=310, replace=TRUE))

for (i in 1:999){resamples <- c(resamples, mean(sample(one_sample, size=310, replace=TRUE)))}


# compute standard error of mean using sample per capita standard deviation

resamp_sd = var(resamples)^0.5

mean_resample = mean(resamples)


# calculate confidence interval using resample mean and sd of per capita income

low_CI_resam = mean_resample - resamp_sd * 1.96

up_CI_resam = mean_resample + resamp_sd * 1.96

CI_resam = c(lower = low_CI_resam, upper = up_CI_resam)

CI_resam

# ********** CALCULATE CI USING RESAMPLE STANDARD DEVIATION (KAPLAN) **********


# Repeat Kaplan's process with a bigger resampling size

resamples2 <- mean(sample(one_sample, size=310, replace=TRUE))

for (i in 1:2199){resamples2 <- c(resamples2, mean(sample(one_sample, size=310, replace=TRUE)))}

resamp2_sd = var(resamples2)^0.5

mean_resample2 = mean(resamples2)

low_CI_resam2 = mean_resample2 - resamp2_sd * 1.96

up_CI_resam2 = mean_resample2 + resamp2_sd * 1.96

CI_resam2 = c(lower = low_CI_resam2, upper = up_CI_resam2)

CI_resam2