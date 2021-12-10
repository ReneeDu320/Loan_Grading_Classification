library(caret)
#We will be predicting interest rate using the loan records
data <- read_csv("derived_date/loans_tidied.csv")
data <- na.omit(data)
index <- createDataPartition(data$interest_rate, p = .70, list = FALSE)
train <- data[index,]
test <- data[-index,]
lm3 <- lm(interest_rate ~ grade+debt_to_income+verified_income+application_type+
            paid_total+paid_principal, data = data)
summary(lm3)
