#문제 R00-0620

p <- c (3, 5, 6, 8)
q <- c (3, 3, 3)
p+q
#결과
#[1]  6  8  9 11
#Warning message:
# In p + q : longer object length is not a multiple of shorter object length

z <- 0:9
digits <- as.character(z)
as.integer(digits)
#결과
# [1] 0 1 2 3 4 5 6 7 8 9

x <- c(1,2,3,4)
(x+2)[(!is.na(x)) & x > 2] -> k
k
#결과
#[1] 5 6

#is.na : 안에 na 가 있는지 확인 하는 함수
#NA 결측지 : 있어야 하는데 값이 없는 것
#NAN 결측지x 데이터를 결정할수 없는 값 , 0/0
#NULL : 값이 없다.





x <- c(2, 4, 6, 8)
y <- c(TRUE, TRUE, FALSE, TRUE)
sum(x[y])
#결과
#[1] 14

x <- 11:20; x
x[-(3:6)] # - 는 제거 연산자
#결과 
#[1] 11 12 17 18 19 20

z <- c(11:13, NA)
v1 = c(sum(z),sum(z[!is.na(z)]))
sum(v1,na.rm=T) # na.rm =T 를 하면 na 를 제거해줌
#결과
#[1] 36

z <- -1:1 / 0 # -Inf  NaN  Inf -> 여기서Inf 는 무한대, NAN 는 성립하지 않아서 뜨는것
is.na(z)
z = c(z,NA)
is.nan(z) & is.na(z) # is.nan 은 na 와 nan 을 포함해서 true 라고 함
#결과
#[1] FALSE  TRUE FALSE FALSE

x2 <- c(1, 2, NULL, NA, 4)
length(x2) # NULL이 빠진다
#결과
#[1] 4

mean(c(95,90,NA,100))
#결과
#[1] NA

mean(c(95,90,NA,100),na.rm=T)
#결과
# [1] 95

mean(c(95,90,NULL,100))
#결과
# [1] 95

x <- c(34, 56, 55, 87, NA, 4, 77, NA, 21, NA, 39)
length(is.na(x))
sum(is.na(x)) # na 의 개수 
#결과
#[1] 11
#[1] 3

#is.na(x)의 개수를 세는 방법 count(is.na(x))

x=c(1:12)
dim(x)
#결과
#NULL

x=c('blue',10,'green',20)
is.character(x)
#결과
#[1] TRUE

# <데이터유형 (타입)> ###################
# 3  정수 integer
# 'A'  문자 character
# 3.14  실수 double
# TRUE, FALSE, T, F  logical
# 3+4i 복소수 complex
# factor (보류) #범주형데이터타입

#형변환
#묵시적 , 명시적 (as...)

#컨테이너 5가지
#Vector
#matrix 2D
#list
#Array 3D
#data.frame

#데이터 변수(컨테이너, 클래스) 5가지
#Vector
#List
#Matrix
#Array
#Data frame

#명시적 형변환
mean(c(90,95,100,'80'))
mean(as.numeric(c(90,95,100,'80')))

#문제 R00-0621

Age = c(22,25,18,20)
Name = c("Janmes","Mathew","Olivia","Stella")
Gender = c("M","M","F","F")

df1=data.frame(Age,Name,Gender) ; df1
str(df1) #데이터 프레임의 구조를 아는 방법

#df1[행정보,열정보]
df1[2,2]

#방법1 물리적 방법
df1[1:2,] #비우면 모든것을 고름

#방법2 물리적 방법
df1[-(3:4),]

#방법3 함수 방법
subset(df1,Gender=="M")


#문제 R00-0622

year=c(2005:2016)
month=c(1:12)
day=c(1:31)

#방법1
data=list(year=c(2005:2016),
          month=c(1:12),
          day=c(1:31))
data

#방법2
data2=list(year,month,day)
names(data2)=c('year','month','day')
data2

#방법3 이름 만드는 방법이 다름
data3=list()
data3[['year']]=year
data3[['month']]=month
data3[['day']]=day

data3$'year' = year
data3$month = month
data3$day = day

data3

names(c(1,2,3,4,5))=letters[1:5]
