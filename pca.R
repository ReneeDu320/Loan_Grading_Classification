library(dummies) 
library(tidyverse)
data <- read.csv("derived_data/loans_tidied.csv")
data <- na.omit(data)
data_dummy <- dummy.data.frame(data, names = c("verified_income","application_type","grade"),sep=".")
my_data <- scale(data_dummy, center = T, scale =T)
mydata.pca <- prcomp(my_data, center = F,scale. = F)

library(factoextra)
png("figures/pca.png")
fviz_pca_var(mydata.pca, select.var= list(cos2 = 10), repel=T, col.var = "contrib")
dev.off()



