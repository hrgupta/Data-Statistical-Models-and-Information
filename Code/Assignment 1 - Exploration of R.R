### Commands run on the countyComplete dataset.

# [1] Code to load dataset.

county = read.csv("countyComplete.csv")

# [2] Code to briefly describe the structure of the dataset.

str(county)

# [3] Code to briefly summarize the dataset.

summary(county)

# [4] Code to calculate the mean of per capita income

pci = county$per_capita_income
mean(pci)

# [5] Code to calculate the median of per capita income

mean(pci)

# [6] Code to calculate the standard deviation of per capita income

sd(pci)

# [7] Code to calculate the variance of per capita income

var(pci)

# [8] Code to generate histogram of per capita income

hist(pci)

# [9] Code to draw graphical representation of per capita income

plot(pci)

# [10] Code to calculate the mean of bachelors

bach = county$bachelors
mean(bach)

# [11] Code to calculate the median of bachelors

mean(bach)

# [12] Code to calculate the standard deviation of bachelors

sd(bach)

# [13] Code to calculate the variance of bachelors

var(bach)

# [14] Code to generate histogram of bachelors

hist(bach)

# [15] Code to draw graphical representation of bachelors

plot(bach)

# [16] Code to calculate the mean of mean_work_travel

mwt = county$mean_work_travel
mean(mwt)

# [17] Code to calculate the median of mean_work_travel

mean(mwt)

# [18] Code to calculate the standard deviation of mean_work_travel

sd(mwt)

# [19] Code to calculate the variance of mean_work_travel

var(mwt)

# [20] Code to generate histogram of mean_work_travel

hist(mwt)

# [21] Code to draw graphical representation of mean_work_travel

plot(mwt)

# [22] Code to find the relationship between the variables bachelors and per_capita_income

cor(pci, bach, method = "pearson")
