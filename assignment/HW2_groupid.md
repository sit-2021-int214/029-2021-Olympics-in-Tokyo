# Assignment 2 (Group)
Explore 2 dataset that given then finding descriptive statistics and summary result in form of sentences/paragraph at least 5 topics.

### Answer

1.) �ҹ��˹ѡ�������¢ͧ��ǵ�Ǽ�������
```{R}
mean(cats$Bwt[cats$Sex == 'M']) # 2.9
```
2.) ��������Ҫԡ����������з���ش
```{R}
max(survey$Age) #73
```
3.) �Ҩӹǹ����·���ٺ������
```{R}
length(survey$Smoke[survey$Sex == 'Male']) #119
```
4.) �Ҩӹǹ����������ҡ����������ҡѺ18 
```{R}
nrow(survey[survey$Age>=18]) #159
```
5.) �Ҥ������¢ͧ���ؼ���·�����
```{R}
Sex <- c("Male")
MaleAge <- c(survey$Age[survey$Sex == 'Male'])
X <- mean(MaleAge, na.rm = TRUE)
Age <- c(X)
table <- data.frame(Sex,Age)
View(table) #20.33196

```


### Team: xxxxxxx

1. ��������ø�� �ҷԵ�����§      StudentID: 63130500130
2. �ҧ��ǪԪ�� ���ʹ         StudentID: 63130500150
3. ���⪤��ŷ�� ��Ū��        StudentID: 63130500151





