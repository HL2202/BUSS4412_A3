// Install required modules
ssc install reghdfe
ssc install ftools

// Load the dta file created from the Pandas code
use regression_factors.dta, clear

// Create a time variable newmonth and format according to Stata requirements
gen newdate = date(date, "YMD")
gen newmonth = mofd(newdate)
format newmonth %tm

// Set newmonth as the time variable
tset newmonth

// T-test for mktb with Newey-west standard errors
newey mktb, lag(6)

// T-test for drf with Newey-west standard errors
newey drf, lag(6)

// T-test for crf with Newey-west standard errors
newey crf, lag(6)

// T-test for lrf with Newey-west standard errors
newey lrf, lag(6)

// T-test for rev with Newey-west standard errors
newey rev, lag(6)

// Normal regression of drf and mktb
regress drf mktb

// Newey-west regression of drf and mktb
newey drf mktb, lag(6)
estimates store drf_model

// Normal regression of crf and mktb
regress crf mktb

// Newey-west regression of crf and mktb
newey crf mktb, lag(6)
estimates store crf_model

// Normal regression of lrf and mktb
regress lrf mktb

// Newey-west regression of lrf and mktb
newey lrf mktb, lag(6)
estimates store lrf_model

// Normal regression of rev and mktb
regress rev mktb

// Newey-west regression of rev and mktb
newey rev mktb, lag(6)
estimates store rev_model

// Newey-west regression of mktb and drf
newey mktb drf, lag(6)
estimates store drf_model_mktb

// Newey-west regression of mktb and crf
newey mktb crf, lag(6)
estimates store crf_model_mktb

// Newey-west regression of mktb and lrf
newey mktb lrf, lag(6)
estimates store lrf_model_mktb

// Newey-west regression of mktb and rev
newey mktb rev, lag(6)
estimates store rev_model_mktb

// Normal regression of mktb with drf, crf, lrf and rev
regress mktb drf crf lrf rev

// Newey-west regression of mktb with drf, crf, lrf and rev
newey mktb drf crf lrf rev, lag(6)
estimates store mktb_model
