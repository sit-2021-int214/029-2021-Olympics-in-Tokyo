# Olympics in Tokyo

## Hypothesis Testing
### Question
ในการแข่งขัน Olympic ปี 2021 ที่ Tokyo ได้มีประเทศที่ทำการแข่งขันทั้งหมด 86 ทีม ทุกประเทศมีเหรียญรวมกันทั้งหมด 1080 เหรียญ โดยมีค่าเฉลี่ยอยู่ที่ 11.61 และ ส่วนเบี่ยงเบนมาตราฐาน 19.09 ได้ตั้งสมมุติฐานว่าได้เหรียญต่ำกว่า 15 เหรียญ และค่า alpha = 0.05

## libary
```
library(dplyr)
library(readr)
```
## read csv
```
Medal <- read.csv("https://raw.githubusercontent.com/sit-2021-int214/029-2021-Olympics-in-Tokyo/master/csv_clean/Medals_clean.csv")
```
## ดูจำนวนเหรียญทั้งหมดของแต่ละประเทศ
```
Medal %>% select(2,6)ฃ
```
## ดูค่าxbar
```
mean(Medal$Total)
```
## ดูเหรียญทั้งหมดของแต่ละประเทศรวมกัน
```
Medal %>% select(Total) %>% sum(Total)
```


## Step 1.กำหนดค่า
```
n <- 1080
sd <- 19.09
xbar <- 11.61
U0 <- 15
alpha <- 0.05

H0=u<15 , Ha>=15
```
## Step 2.หาค่า z
```
z <- (xbar-U0)/(sd/sqrt(n))
```
result
```
[1] -5.835871
```
## Step 3.หาค่า p value
```
pvalue <- 1-pnorm(z)
```
result
```
[1] 1
```
## Step 4.เปรียบเทียบค่า p value
```
if(pvalue<alpha){
  print("Reject H0")
}else{
  print("Accept H0")
}
```
result
```
[1] "Accept H0"
```
## Step 5.หาค่า z critical
```
zcri <- qnorm(1-alpha)
```
result 
```
1.644854
```
## Step 6.เปรียบเทียบค่า z 
```
if(z>zcri){
  print("Reject H0")
}else{
  print("Accept H0")
}
```
result
```
[1] "Accept H0"
```
