library(Amelia)
library(tidyverse)

data <- read.csv("derived_data/loans_tidied.csv")

png(file = "figures/missmap.png")
missmap(data, 
        main = "Missing values vs observed")
dev.off()