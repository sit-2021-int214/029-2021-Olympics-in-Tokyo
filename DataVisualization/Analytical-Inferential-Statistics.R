library(dplyr)
library(readr)

Medal <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Medals_clean.csv")

Medal %>% select(2,6)

mean(Medal$Total)

Medal %>% select(Total) %>% sum(Total)

#H0=u<15 , Ha>=15

n <- 1080
sd <- 19.09
xbar <- 11.61
U0 <- 15
alpha <- 0.05

z <- (xbar-U0)/(sd/sqrt(n))
pvalue <- 1-pnorm(z)

if(pvalue<alpha){
  print("Reject H0")
}else{
  print("Accept H0")
}

zcri <- qnorm(1-alpha)
if(z>zcri){
  print("Reject H0")
}else{
  print("Accept H0")
}