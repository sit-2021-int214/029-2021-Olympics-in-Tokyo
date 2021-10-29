library("dplyr") 
library("stringr") 
library("tidyr") 
library("assertive") 
library("readr")  

trains <-read.csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/superstore_sales.csv")

#1
mean(trains$Sales) #230.7691
#2
trains%>%select(Sub.Category)%>%distinct()
#3
trains%>%select(Sales)%>%filter(Sales == max(Sales)) #22638.48
#4
train<-trains%>%select(State)%>%count(State)
train%>%select(State,n)%>%filter(n == max(train$n))
#5
train%>%select(State,n)%>%filter(n == 1)
#6
trains%>%select(Ship.Mode)%>%count(Ship.Mode)


library(ggplot2)
ggplot(trains,aes(x=Category)) + geom_bar()

ggplot(trains , aes(x="", y=Sales, fill=Sub.Category)) +
  geom_bar(stat="identity", width=1) +
  coord_polar("y", start=0)