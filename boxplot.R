library(tidyverse)
data <- read.csv("derived_data/loans_tidied.csv")
aggregate(data$interest_rate, by=list(data$grade),mean)
library(ggplot2)
ggplot(data, aes(grade, interest_rate)) + 
  geom_boxplot(fill = "white", color = "darkgreen", 
               outlier.shape=21, outlier.size=4, outlier.stroke = 1,
               outlier.color = "blue", outlier.fill = "orange")+ 
  labs(x = "Grade", y = "Interest_Rate", title = "Interest_Rate by Grade") +scale_y_continuous(limits=c(1,35))

ggsave("figures/boxplot.png")
