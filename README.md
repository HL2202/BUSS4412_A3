# BUSS4412_A3

This github repository is used to store the code for BUSS4412 Assignment 3. Please note that the file hw03_data.csv was too large to be uploaded onto github, but the original file accessed from canvas was read at the start of the code without any modifications.

The main Python code is Assignment_3_Python.ipynb. It is a Jupyter notebook file containing the code used to solve Section 1 and Section 2.

The coding for Section 3 and Section 4, as well as the t-test for Section 1, was performed in Stata. The Stata code is Assignment_3_Stata.do.

regression_factors.dta is the Stata file which was outputted from the Python code. This dta file contains all of the monthly excess returns of the BBW factors as well as the date of the return. The dta file can be directly reproduced through running the Python code line by line.

wrds_rf_data.csv was a file retrieved from WRDS for the monthly risk free rate from August 2004 to December 2021. The WRDS data was obtained from the Ken French library for the monthly return used in the Fama 3 Factor.

bbw_wrds_sept_2023_latest.csv was the factors produced by Alex Dickerson in the Open Source Bond Asset Pricing: https://openbondassetpricing.com/code/. These factors were the latest version available created by the authors in September 2023, which was accounted for noisy TRACE-prices.
