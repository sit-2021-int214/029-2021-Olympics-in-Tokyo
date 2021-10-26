library("dplyr") 
library("stringr") 
library("tidyr") 
library("assertive") 
library("readr")  
Athletes <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Athletes_clean.csv")
Coaches <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Coaches_clean.csv")

EntriesGender <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/EntriesGender.csv")

Medals <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Medals_clean.csv")

Teams <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Teams_clean.csv")


Athletes$country <- as.factor(Athletes$country)
# 1.
country <- Athletes %>% count(country)
country %>% select(country, n) %>% filter(n == max(n))
# 2.
Athletes$Discipline <- as.factor(Athletes$Discipline)
Discipline <- Athletes$Discipline %>% distinct()
as_tibble(Discipline)

Athletes%>%select(Discipline)%>%distinct()

#3
Coaches %>% select(Name, Discipline, Event) %>% filter(Event == "Women")
#4
Coaches %>% select(country, Discipline, Event) %>% filter(Event == "Team")
#5
genderW <- EntriesGender
genderW %>% select(Female) %>% sum()

genderM <- EntriesGender %>% count(Female)

genderW <- EntriesGender$Female %>% sum()
as_tibble(genderW)
genderM <- EntriesGender$Male %>% sum()
as_tibble(genderM)
genderW > genderM
#6
Total <- EntriesGender$Total %>% sum()
as_tibble(Total)

#7
Medals1 <- Medals %>% select(country, Total) %>% filter(Total == 1)
as_tibble(Medals1)

#8
goldMedals <- Medals %>% select(country, Gold) %>% filter(Gold == 10)
as_tibble(goldMedals)

#9
swimmingTeam <- Teams %>% select(country, Discipline) %>% filter(Discipline == "Swimming") %>% distinct()
as_tibble(swimmingTeam)

#10
Teams$Discipline <- as.factor(Teams$Discipline)
sport <- Teams %>% count(Discipline)

sport %>% select(Discipline, n) %>% filter(n == max(n))

country <- Athletes %>% count(country)
country %>% select(country, n) %>% filter(n == max(n))
