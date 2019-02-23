require( mosaic )

# code to reconstruct per capita income for state

county = read.csv( "countyComplete.csv" )

cm = mean( county$per_capita_income ~ county$state ) 
cm

cmf = function(x){ return(km[[x]]) }

cmff = function(v) { sapply(v,kmf) }

# code to add columns to the dataset

county = transform(county, fitted = cmff(state))
county = transform(county, resid = per_capita_income ~ fitted)

# get variance for fitted variable

var(county$fitted)

# get variance for residual

var(county$resid)

# get variance for per capita income variable

var(county$per_capita_income)

# code to get added value of fitted and residual

var(county$fitted) + var(county$resid)

# get the percent of fitted value to per capita income value

var(county$fitted)/var(county$per_capita_income)

# code for first explanatory variable

medianf = sapply( county_median$median_household_income, function(x){ if( x < 40000 ) return( "low income" ) else if (x >= 40000 & x < 60000) return( "middle income" ) else return( "high income" )}) 

county_median = county

mm = mean( county_median$poverty ~ medianf )

mmf = function(x) { if( x < 40000 ) return( mm["low income"] ) else if ( x >= 40000 & x < 60000) return( mm[ "middle income" ] ) else return( mm[ "high income" ] ) }

mmff = function(v) { sapply( v, mmf ) }

# code to add columns to the dataset

county_median =  transform( county_median, fitted = mmmf( county_median $ median_household_income ))

county_median =  transform( county_median, resid = county_median$poverty ~ fitted )

# get variance for residual

var(county_median$resid)

# get variance for poverty  variable

var(county_median$poverty)

# get variance for fitted variable

var(county_median$fitted)

# code to get added value of fitted and residual

var(countymedian$fitted) + var(countymedian$resid)

# get the percent of fitted value to poverty value

var(county_median$fitted)/var(county_median$poverty)

# code for second explanatory variable

percapf = sapply(county_percap$per_capita_income, function(x){ if(x<20000) return("low income") else if (x>=20000 & x < 40000) return("middle income") else return("high income")})

county_percap = county

pm = mean(county_percap$poverty ~ percapf)

pmf = function(x){ if(x<20000) return(pm["low income"]) else if (x>=20000 & x < 40000) return(pm["middle income"]) else return(pm["high income"])}

pmff = function(v){ sapply(v, pmf)}

# code to add columns to the dataset

county_percap =  transform(county_percap, fitted = pmff(county_percap$per_capita_income))

county_percap =  transform(county_percap, resid = county_percap$poverty ~ fitted)

# get variance for residual

var(county_percap$resid)

# get variance for poverty  variable

var(county_percap$poverty)

# get variance for fitted variable

var(county_percap$fitted)

# code to get added value of fitted and residual

var(county_percap$fitted) + var(county_percap$resid)

# get the percent of fitted value to poverty value

var(county_percap$fitted)/var(county_percap$poverty)
