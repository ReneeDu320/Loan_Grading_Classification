library(tidyverse)

original_data <- read.csv(file = "loans_full_schema.csv", 
                          header = TRUE)
# select only the important variables and create a new table
data <- original_data %>% select(interest_rate, 
                                 debt_to_income, 
                                 term, 
                                 loan_amount, 
                                 verified_income, 
                                 application_type, 
                                 grade, 
                                 balance,
                                 paid_total,
                                 paid_interest, 
                                 paid_principal, 
                                 paid_late_fees )
write_csv(data,"derived_data/loans_tidied.csv")

