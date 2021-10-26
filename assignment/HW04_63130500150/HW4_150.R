library("dplyr") 
library("stringr") 
library("tidyr") 
library("assertive") 
library("readr")  
TopBook <- read_csv("https://raw.githubusercontent.com/safesit23/INT214-Statistics/main/datasets/prog_book.csv")
# 1
num_page <- TopBook %>% filter(Number_Of_Pages == max(Number_Of_Pages)) %>% select(Type)
num_page
#2
TopBook %>% filter(Reviews == 0) %>% select(Book_title, Reviews)
#3
mean(TopBook$Price) #54.54186
#4
LowRating <- TopBook %>% filter(Rating == min(Rating)) %>% select(Reviews) 
LowRating
#5
Ebook <- TopBook %>% filter(Type == "ebook") %>% select(Book_title, Number_Of_Pages, Price)
Ebook
#6
Paperback <- TopBook %>% filter(Type == "Paperback") %>% filter(Rating == max(Rating)) %>% select(Rating) 
Paperback
Hardcover <- TopBook %>% filter(Type == "Hardcover") %>% filter(Rating == max(Rating)) %>% select(Rating) 
Hardcover
Paperback-Hardcover #-0.05


library(ggplot2)
ggplot(TopBook, aes(x=Price, y=Type)) +
   geom_bar(stat="identity")

ggplot(TopBook, aes(x="", y=Rating, fill=Type)) +
   geom_bar(stat="identity", width=1) +
   coord_polar("y", start=0)
