# final_project
## Introduction to Project
This is the project for BIOS611 Intro to DataSci.  
This project focues on two methods of data analysis: (1) Trend analysis, analyse the distribution of some important variables such as `paid_principle`, `interest_rate` based on the grouped data; and (2) Logistics regression, analyse the contributing factors to the `loan_grade`.  

## Data
This data set represents thousands of loans made through the Lending Club platform, which is a platform that allows individuals to lend to other individuals. Someone who is a essentially a sure bet to pay back a loan will have an easier time getting a loan with a low interest rate than someone who appears to be riskier.  
The orginal dataset can be downloaded from https://www.openintro.org/data/index.php?data=loans_full_schema.  

## Concept

This project will apply concepts and technologies learned in BIOS 611 to analyze loan related data from Lending Club Platform. This analysis will rely on R to clean, wrangle and visualize data, Docker to contain requisite dependencies, and Make for reproducitility.  

## Methods

The analysis includes descriptive statistics to visualize data. The project also includes some regression analysis and predictions for `loan_grade`.  

## Conclusion

Loan grading is a classification system that involves assigning a quality score to a loan based on a borrower's credit history, quality of the collateral, and the likelihood of repayment of the principal and interest. We can conclude from the above figures that the average interest_rate arises when the loan grade becomes lower. For loan grade from A to G, the average paid total, average paid principle and average paid total to loan percentage increases. To explore the reason of this trend, we also plot the average loan amount by loan grade. From the result we can conclude that the loans which have lower grades usually have larger average loan amounts so that drive up the average paid total amount for the low-grade loans.

## how to produce the report

The first step is to run the Dockerfile in this repository. When the environment is set up, you can use the Makefile to produce the final project.pdf. 
