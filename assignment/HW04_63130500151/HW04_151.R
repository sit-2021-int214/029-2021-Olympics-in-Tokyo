install.packages("readr")
install.packages("dplyr")
install.packages("stringr")
install.packages("tidyr")
install.packages("assertive")
install.packages("ggplot2")
library("dplyr") 
library("stringr") 
library("tidyr") 
library("assertive") 
library("readr")  

products <-read.csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")


#1
min(products$Sales) #0.444
#2
max(products$Sales) #22638.48
#3
mean(products$Sales) #230.7691
#4
products%>%select(Country)%>%filter%>%count(Country == "United States") #9800
#5
sum(products$Sales) #2261537
#6
products%>%select(Product.Name,Sales)%>%filter(Sales==max(products$Sales)) #Product.Name 1 Cisco TelePresence System EX90 Videoconferencing Unit
#Sales 22638.48

library(ggplot2)
ggplot(products,aes(x=Category)) + geom_bar()

ggplot(products , aes(x="", y=Sales, fill=Sub.Category)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)