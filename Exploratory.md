# Olympics in Tokyo Dataset

Dataset from [Olympics in Tokyo Dataset](./csv)

## library
```R
library("dplyr")
library("stringr")
library("tidyr")
library("assertive")
library("readr")
```

## Read CSV
- Read Athletes
```R
Athletes <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Athletes_clean.csv")
```
- Read Coaches
```R
Coaches <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Coaches_clean.csv")
```
- Read EntriesGender
```R
EntriesGender <- read.csv("https://github.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/blob/master/csv_clean/EntriesGender.csv")
```
- Read Medals
```R
Medals <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Medals_clean.csv")
```
- Read Teams
```R
Teams <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Teams_clean.csv")
```


### My Step
1. Define a question
2. Search datasets from Kaggle
3. Download Library and dataset
4. Explore the dataset from the original dataset
5. Cleaning Dataset
6. Exploratory Data Analysis

## Dataset from [Athletes](./csv/Athletes.csv)

Define a question
1. ประเทศใดส่งนักกีฬาแข่งขันมากที่สุด และมีจำนวนเท่าใด
```R
country <- Athletes %>% count(country)
country %>% select(country, n) %>% filter(n == max(n))
```
```
 country                   n
 United States of America  615

```
ประเทศ United States of America มีผู้เข้าแข่งขันมากที่สุด มีจำนวน 615

2. ในการแข่งขัน Olympics in Tokyo 2020 มีกีฬาประเภทอะไรบ้าง
```R
sport <- Athletes%>%select(Discipline)%>%distinct()
```
```
              Discipline
1           Cycling Road
2    Artistic Gymnastics
3                 Rowing
4             Basketball
5               Handball
6               Swimming
7                 Karate
8              Wrestling
9    Rhythmic Gymnastics
10     Baseball/Softball
11             Athletics
12     Artistic Swimming
13                  Judo
14              Shooting
15          Table Tennis
16              Football
17             Taekwondo
18               Fencing
19             Badminton
20                Boxing
21         Weightlifting
22               Archery
23                Diving
24      Beach Volleyball
25               Sailing
26                Hockey
27 Trampoline Gymnastics
28     Marathon Swimming
29             Triathlon
30          Canoe Slalom
31            Water Polo
32               Surfing
33          Canoe Sprint
34    Cycling BMX Racing
35          Rugby Sevens
36            Volleyball
37            Equestrian
38                Tennis
39         Cycling Track
40                  Golf
41         Skateboarding
42     Modern Pentathlon
43 Cycling Mountain Bike
44        3x3 Basketball
45 Cycling BMX Freestyle
46        Sport Climbing
```

## Dataset from [Coaches](./csv/Coaches.csv)

Define a question
1. โค้ชคนใดบ้างที่คุมกีฬาประเภทหญิงล้วน พร้อมบอกชื่อกีฬา
```R
Coaches %>% select(Name, Discipline, Event) %>% filter(Event == "Women")
```
```
                             Name   Discipline Event
1                 ALEKSEEV Alexey     Handball Women
2               ANDONOVSKI Vlatko     Football Women
3                    ANNAN Alyson       Hockey Women
4              ARNAU CREUS Xavier       Hockey Women
5                     AXNER Tomas     Handball Women
6        BATISTA SANTIAGO Gerardo   Basketball Women
7          BILLAVA SURESH Ankitha       Hockey Women
8                     BIRO Attila   Water Polo Women
9               BRODERICK William Rugby Sevens Women
10                BRONDELLO Sandy   Basketball Women
11                    BROWN Chris Rugby Sevens Women
12                  BUNTING Allan Rugby Sevens Women
13                  BUSATO Sergio   Volleyball Women
14                     BYRNE Mick Rugby Sevens Women
15                   CHUN Jooweon   Basketball Women
16                 COURTEIX David Rugby Sevens Women
17                    CRUZ Filipe     Handball Women
18                    DANCER Sean       Hockey Women
19                    DAVY Jeremy       Hockey Women
20              de MOURA Luizomar   Volleyball Women
21        DUENAS de GALARZA Jorge     Handball Women
22                     ELEK Gabor     Handball Women
23                 FERRARO Hernan   Volleyball Women
24                  FORREST Scott Rugby Sevens Women
25                    FULI Saiasi Rugby Sevens Women
26             GAIDUKOV Aleksandr   Water Polo Women
27                GARNIER Valerie   Basketball Women
28              GERHARDSSON Peter     Football Women
29              GUIDETTI Giovanni   Volleyball Women
30         GUIMARAES Jose Roberto   Volleyball Women
31                GUSTAVSSON Tony     Football Women
32                     HAGER Mark       Hockey Women
33                   HAVENGA Arno   Water Polo Women
34             HERGEIRSSON Thorir     Handball Women
35           HOVASSE Thomas Wayne   Basketball Women
36                HUGHLEY JR Otis   Basketball Women
37                    JIA Xiuquan     Football Women
38                   KANG Jae Won     Handball Women
39                 KELLER Florian       Hockey Women
40                   KIRALY Karch   Volleyball Women
41                  KIRKELY Ulrik     Handball Women
42                 KRIKORIAN Adam   Water Polo Women
43              KRUMBHOLZ Olivier     Handball Women
44                   KUZIN Andrey Rugby Sevens Women
45                   KWIEK Marcos   Volleyball Women
46                      LANG Ping   Volleyball Women
47               LAVARINI Stefano   Volleyball Women
48                  LETELIER Jose     Football Women
49             LOCK Adrian Mayner       Hockey Women
50 MACKINTOSH Euan Michael Gordon Rugby Sevens Women
51                    MAKIRI Hare Rugby Sevens Women
52               MALJKOVIC Marina   Basketball Women
53                   MANENTI John Rugby Sevens Women
54                 MARIJNE Sjoerd       Hockey Women
55             MAYONNADE Emmanuel     Handball Women
56                MAZZANTI Davide   Volleyball Women
57                MENTOOR Delaine   Water Polo Women
58                MESTDAGH Philip   Basketball Women
59             MIHAILOVIC Predrag   Water Polo Women
60                    MIURA Keiko       Hockey Women
61           MONDELO GARCIA Lucas   Basketball Women
62              MOTOMIYA Makihiro   Water Polo Women
63                    MWAPE Bruce     Football Women
64                   NAIDOO Taren       Hockey Women
65                    NAKADA Kumi   Volleyball Women
66          OCA GAIA Miguel Angel   Water Polo Women
67                     OLOO Felix Rugby Sevens Women
68                 PARADELO David   Water Polo Women
69                  POROBIC Petar   Water Polo Women
70                 POWELL Katrina       Hockey Women
71                  PRIESTMAN Bev     Football Women
72               RECKINGER Xavier       Hockey Women
73            RETEGUI Carlos Jose       Hockey Women
74                     RIISE Hege     Football Women
75                     SAVIC Maja     Handball Women
76                   SERMANNI Tom     Football Women
77                    SHAW Graham       Hockey Women
78                    STALEY Dawn   Basketball Women
79           SUNDHAGE Pia Mariane     Football Women
80                 TAKAKURA Asako     Football Women
81                   TERZIC Zoran   Volleyball Women
82                 THOMAIDIS Lisa   Basketball Women
83               van GINKEL Robin       Hockey Women
84      VIVER ARZA Carlos Enrique     Handball Women
85                      WANG Yang       Hockey Women
86                 WIEGMAN Sarina     Football Women
87                       XU Limin   Basketball Women
88                  ZONDI Nkuliso       Hockey Women
```
2. ประเทศใดบ้างที่ส่งการแบบทีม และมีกีฬาอะไรบ้าง
```R
Coaches %>% select(country, Discipline, Event) %>% filter(Event == "Team")

```
```
                      country        Discipline Event
1                       Egypt Artistic Swimming  Team
2                      Greece Artistic Swimming  Team
3                       Egypt Artistic Swimming  Team
4                       Italy Artistic Swimming  Team
5                       Spain Artistic Swimming  Team
6                       Italy Artistic Swimming  Team
7                         ROC Artistic Swimming  Team
8                      Canada Artistic Swimming  Team
9                     Ukraine Artistic Swimming  Team
10                  Australia Artistic Swimming  Team
11                      Spain Artistic Swimming  Team
12                     Canada Artistic Swimming  Team
13                     Greece Artistic Swimming  Team
14 People's Republic of China Artistic Swimming  Team

```

## Dataset from [EntriesGender](./csv/EntriesGender.csv)

Define a question
1. นักกีฬาเพศใดถูกส่งเข้าร่วมการแข่งขันมากที่สุด
```R
genderW <- EntriesGender$Female %>% sum()
as_tibble(genderW)
genderM <- EntriesGender$Male %>% sum()
as_tibble(genderM)
genderW > genderM
```
```
genderW <- EntriesGender$Female %>% sum()
> as_tibble(genderW)
# A tibble: 1 x 1
  value
  <int>
1  5432
> genderM <- EntriesGender$Male %>% sum()
> as_tibble(genderM)
# A tibble: 1 x 1
  value
  <int>
1  5884
> genderW > genderM
[1] FALSE

```
จากคำตอบที่เป็นFalseแสดงว่านักกีฬาเพศชายมากกว่าเพศหญิง


2. นักกีฬาที่เข้าร่วมทั้งหมดมีกี่คน
```R
Total <- EntriesGender$Total %>% sum()
as_tibble(Total)

```
```
value
  <int>
1 11316
```
จากคำตอบมีนักกีฬาที่เข้าร่วมทั้งหมด 11316 คน


## Dataset from [Medals](./csv/Medals.csv)

Define a question
1. ประเทศใดบ้างที่ได้เหรียญในการแข่งขัน Olympics in Tokyo 2020 เพียงเหรียญเดียว
```R
Medals %>% select(country) %>% filter(Medals$Total == 1)
```
```
                country
1               Bermuda
2               Morocco
3           Puerto Rico
4               Bahrain
5          Saudi Arabia
6             Lithuania
7       North Macedonia
8               Namibia
9          Turkmenistan
10             Botswana
11         Burkina Faso
12        C?te d'Ivoire
13                Ghana
14              Grenada
15               Kuwait
16  Republic of Moldova
17 Syrian Arab Republic

```

2.ประเทศใดบ้างที่สามารถครอบครองเหรียญทองได้ 10 เหรียญ
```R
Medals %>% select(country) %>% filter(Medals$Gold == 10)
```
```
      country
1 Netherlands
2      France
3     Germany
4       Italy
```

## Dataset from [Teams](./csv/Teams.csv)

-Define a question
1. กีฬาประเภท swimming มีประเทศใดส่งนักกีฬาเข้าร่วมบ้าง
```R
Teams %>% select(country) %>% filter(Teams$Discipline == "Swimming")%>%distinct()
```
```
                      country
1                   Australia
2                     Belarus
3                      Brazil
4                      Canada
5  People's Republic of China
6              Czech Republic
7                     Denmark
8                      France
9                     Germany
10              Great Britain
11                     Greece
12           Hong Kong, China
13                    Hungary
14                    Ireland
15                     Israel
16                      Italy
17                      Japan
18                  Lithuania
19                Netherlands
20                New Zealand
21                     Poland
22          Republic of Korea
23                        ROC
24                     Serbia
25               South Africa
26                      Spain
27                     Sweden
28                Switzerland
29                     Turkey
30   United States of America
```


2. กีฬาประเภทใดที่มีผู้เข้าแข่งขันมากที่สุด
```R
Teams %>% select(Discipline) %>% filter(Teams$Discipline == max(Teams$Discipline)) %>% distinct()
```
```
  Discipline
1 Water Polo
```
กีฬา Water Polo มีผู้เข้าแข่งขันมากที่สุด