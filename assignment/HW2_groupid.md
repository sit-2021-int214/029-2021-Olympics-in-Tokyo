# Assignment 2 (Group)
Explore 2 dataset that given then finding descriptive statistics and summary result in form of sentences/paragraph at least 5 topics.

### Answer

1.) ËÒ¹éÓË¹Ñ¡¤èÒà©ÅÕèÂ¢Í§áÁÇµÑÇ¼Ùé·Ñé§ËÁ´
```{R}
mean(cats$Bwt[cats$Sex == 'M']) # 2.9
```
2.) ËÒÍÒÂØÊÁÒªÔ¡·ÕèÍÒÂØàÂÍÐ·ÕèÊØ´
```{R}
max(survey$Age) #73
```
3.) ËÒ¨Ó¹Ç¹¼ÙéªÒÂ·ÕèÊÙººØËÃÕè
```{R}
length(survey$Smoke[survey$Sex == 'Male']) #119
```
4.) ËÒ¨Ó¹Ç¹¤¹·ÕèÍÒÂØÁÒ¡¡ÇèÒËÃ×Íà·èÒ¡Ñº18 
```{R}
nrow(survey[survey$Age>=18]) #159
```
5.) ËÒ¤èÒà©ÅÕèÂ¢Í§ÍÒÂØ¼ÙéªÒÂ·Ñé§ËÁ´
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





