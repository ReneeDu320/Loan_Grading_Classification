library(tidyverse)
data <- read_csv("derived_data/loans_tidied.csv")

data <- mutate(data, paid_to_loan = paid_total/loan_amount)
data1 <- data %>%
  group_by(grade)%>%
  summarize(count = n(),
            avg_paid_principal=mean(paid_principal,na.rm=T),
            avg_paid_total = mean(paid_total,na.rm=T),
            avg_paid_to_loan = mean(paid_to_loan,na.rm=T),
            avg_loan_amount = mean(loan_amount,na.rm=T),
            avg_r=mean(interest_rate,na.rm=T))

png("figures/f1.png")
f1 <- ggplot(data1) + geom_line(aes(x=grade,y=avg_paid_principal,group =1),color = "blue",size=1)+
  geom_line(aes(x=grade,y=avg_paid_total,group =1),color = "purple",size = 1) +
  labs(x = "Grade", y = "average_value", title = "average_paid_principle &average_paid_total by Grade") + annotate("text", x="F", y=4500, label="average_paid_total", alpha=0.5,color ="purple") +
  annotate("text", x="F", y=2000, label="average_paid_principle",alpha=0.5, color="blue")
print(f1)
dev.off()


png("figures/f2.png")
f2 <- ggplot(data1) + geom_line(aes(x=grade,y=avg_r,group =1),color = "black",size =1)+
  labs(x = "Grade", y = "avg_interest_rate", title = "average_interest_rate by Grade")
print(f2)
dev.off()

png("figures/f3.png")
f3 <- ggplot(data1) + geom_line(aes(x=grade,y=avg_paid_to_loan,group =1),color = "orange",size =1)+
  labs(x = "Grade", y = "avg_paid_to_loan", title = "avg_paid_to_loan by Grade")
print(f3)
dev.off()


png("figures/f4.png")
f4 <- ggplot(data1) + geom_line(aes(x=grade,y=avg_loan_amount,group =1),color = "green",size =1)+
  labs(x = "Grade", y = "avg_loan_amount", title = "avg_loan_amount by Grade")
print(f4)
dev.off()
