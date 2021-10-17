# Olympics in Tokyo Dataset

Dataset from [Olympics in Tokyo Dataset](./csv)


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
 country   n
 United States of America 615

```
2. ในการแข่งขัน Olympics in Tokyo 2020 มีกีฬาประเภทอะไรบ้าง
```R

```
```

```

## Dataset from [Coaches](./csv/Coaches.csv)

Define a question
1. โค้ชคนใดบ้างที่คุมกีฬาประเภทหญิง พร้อมบอกชื่อกีฬา
```R

```
```

```
2. ประเทศใดบ้างที่ส่งการแบบทีม
```R

```
```

```

## Dataset from [EntriesGender](./csv/EntriesGender.csv)

Define a question
1. นักกีฬาเพศใดถูกส่งเข้าร่วมการแข่งขันมากที่สุด
```R

```
```

```
2. นักกีฬาที่เข้าร่วมทั้งหมดมีกี่คน
```R

```
```

```

## Dataset from [Medals](./csv/Medals.csv)

Define a question
1. ประเทศใดบ้างที่ได้เหรียญในการแข่งขัน Olympics in Tokyo 2020 เพียงเหรียญเดียว
```R

```
```

```
2. ประเทศใดบ้างที่สามารถครอบครองเหรียญทองได้ 10 เหรียญ
```R

```
```

```

## Dataset from [Teams](./csv/Teams.csv)

-Define a question
1. กีฬาประเภท swimming มีประเทศใดส่งนักกีฬาเข้าร่วมบ้าง
```R

```
```

```
2. กีฬาประเภทใดที่มีผู้เข้าแข่งขันมากที่สุด
```R

```
```

```