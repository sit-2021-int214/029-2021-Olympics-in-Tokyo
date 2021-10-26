library("dplyr") 
library("stringr") 
library("tidyr") 
library("assertive") 
library("readr")  
<<<<<<< HEAD
Athletes <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Athletes_clean.csv")
Coaches <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Coaches_clean.csv")

EntriesGender <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/EntriesGender.csv")

Medals <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Medals_clean.csv")

Teams <- read_csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Teams_clean.csv")
=======
Athletes <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv/Athletes.csv")
Coaches <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv/Coaches.csv")
EntriesGender <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv/EntriesGender.csv")
Medals <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv/Medals.csv")
Teams <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv/Teams.csv")

Athletes %>% duplicated() %>% sum()
Athletes <- Athletes%>% distinct()
Athletes <- Athletes%>% rename(country=NOC)
is.character(Athletes$Name)
is.character(Athletes$country)
is.character(Athletes$Discipline)

Coaches %>% duplicated() %>% sum()
Coaches <- Coaches%>% distinct()
Coaches <- Coaches%>% rename(country=NOC)
is.character(Coaches$Name)
is.character(Coaches$country)
is.character(Coaches$Discipline)
is.character(Coaches$Event)

EntriesGender %>% duplicated() %>% sum()
EntriesGender <- EntriesGender%>% distinct()
is.character(EntriesGender$Discipline)
is.numeric(EntriesGender$Female)
is.numeric(EntriesGender$Male)
is.numeric(EntriesGender$Total)

Medals %>% duplicated() %>% sum()
Medals <- Medals%>% rename(country=Team.NOC)
is.numeric(Medals$Rank)
is.character(Medals$country)
is.numeric(Medals$Gold)
is.numeric(Medals$Silver)
is.numeric(Medals$Bronze)
is.numeric(Medals$Total)
is.numeric(Medals$Rank.By.Total)
Medals$Rank.By.Total <- as.numeric(Medals$Rank.By.Total)

Teams %>% duplicated() %>% sum()
Teams <- Teams%>% rename(country=NOC)
is.character(Teams$Name)
is.character(Teams$Discipline)
is.character(Teams$country)
is.character(Teams$Event)
>>>>>>> a4fab0fb730df216a8d312a6437031ffd34653bf


Athletes$country <- as.factor(Athletes$country)
# 1.
country <- Athletes %>% count(country)
country %>% select(country, n) %>% filter(n == max(n))
<<<<<<< HEAD
# 2.
Athletes$Discipline <- as.factor(Athletes$Discipline)
Discipline <- Athletes$Discipline %>% distinct()
as_tibble(Discipline)

=======

# 2.
>>>>>>> a4fab0fb730df216a8d312a6437031ffd34653bf
Athletes%>%select(Discipline)%>%distinct()

#3
Coaches %>% select(Name, Discipline, Event) %>% filter(Event == "Women")
#4
<<<<<<< HEAD
Coaches %>% select(country, Discipline, Event) %>% filter(Event == "Team")
=======
Coaches %>% select(country, Discipline, Event) %>% filter(Event == "Team") %>% distinct()
>>>>>>> a4fab0fb730df216a8d312a6437031ffd34653bf
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
<<<<<<< HEAD

sport %>% select(Discipline, n) %>% filter(n == max(n))

country <- Athletes %>% count(country)
country %>% select(country, n) %>% filter(n == max(n))
=======
sport %>% select(Discipline, n) %>% filter(n == max(n))

country <- Athletes %>% count(country)
country %>% select(country, n) %>% filter(n == max(n))
>>>>>>> a4fab0fb730df216a8d312a6437031ffd34653bf
