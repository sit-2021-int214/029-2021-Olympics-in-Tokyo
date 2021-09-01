# Assignment 2 (Group)
Explore 2 dataset that given then finding descriptive statistics and summary result in form of sentences/paragraph at least 5 topics.

### Answer

1.) หาน้ำหนักค่าเฉลี่ยของแมวตัวผู้ทั้งหมด
```{R}
mean(cats$Bwt[cats$Sex == 'M']) # 2.9
```
2.) หาอายุสมาชิกที่อายุเยอะที่สุด
```{R}
max(survey$Age) #73
```
3.) หาจำนวนผู้ชายที่สูบบุหรี่
```{R}
length(survey$Smoke[survey$Sex == 'Male']) #119
```
4.) หาจำนวนคนที่อายุมากกว่าหรือเท่ากับ18 
```{R}
nrow(survey[survey$Age>=18]) #159
```
5.) หาค่าเฉลี่ยของอายุผู้ชายทั้งหมด
```{R}
Sex <- c("Male")
MaleAge <- c(survey$Age[survey$Sex == 'Male'])
X <- mean(MaleAge, na.rm = TRUE)
Age <- c(X)
table <- data.frame(Sex,Age)
View(table) #20.33196

```


### Team: xxxxxxx

1. นายอภิวรรธน์ อาทิตย์เที่ยง     StudentID: 63130500130
2. นางสาวชิชญา มารอด          StudentID: 63130500150
3. นายโชคพูลทวี พูลชะโก        StudentID: 63130500151





