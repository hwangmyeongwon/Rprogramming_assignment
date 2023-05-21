#문제 R00-0701
letters == c('a','e','i','o','u')

#[1]  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#[11] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
#[21] FALSE FALSE FALSE FALSE FALSE FALSE
#Warning message:
#  In letters == c("a", "e", "i", "o", "u") :
#  longer object length is not a multiple of shorter object length


which(letters %in% c('a','e','i','o','u'))
#[1]  1  5  9 15 21

m1 <- matrix(1:12, 3, 4)
m1
rbind(which(m1 %% 3 == 0),0)

# [,1] [,2] [,3] [,4]
# [1,]    1    4    7   10
# [2,]    2    5    8   11
# [3,]    3    6    9   12

# [,1] [,2] [,3] [,4]
# [1,]    3    6    9   12
# [2,]    0    0    0    0


#문제 R00-0702

m1 <- matrix(letters[c(1:12)], 3, 4 ,byrow = T) #중요함
m1

which(m1 %in% c('b','d','e'),arr.ind = T) #1차원
which(m1 %in% c('b','d','e'),arr.ind = F) #1차원

id1=which(m1 == 'b',arr.ind = F);id1 #1차원위치
id2=which(m1 == 'b',arr.ind = T);id2 #2차원위치




#문제 R00-0703
trees
class(trees)
trees[which.min(trees$Volume)]
trees[which.min(trees$Volume),]
trees[which.min(trees$Volume),][2]
#키가 가장 큰나무의 volume
trees[which.max(trees$Height),][3]


#문제 R00-0705
round(123.4567) #123
round(123.4567, digit=1) #123.5
round(123.4567, digit=2) #123.46

round(-123.4567) #-123
round(-123.4567, digit=1) #-123.5  음수가 들어가는건 시험에 나올수 있음

round(123.4567, digit=-1) #120

round(-0.6) #-1

round(0.5) #0 5로 중간값을 round로 한 경우는 결과가 짝수로 나옴
round(1.5) #2
round(2.5) #2
round(3.5) #4

ceiling(3.2) #4
ceiling(3.8) #4

floor(3.2) #3
floor(-3.8) #-4

abs(-123) #123

trunc(2.5) #2
trunc(-2.5) #-2

cumsum(1:10) #이거 결과 어떻게 나올지 생각할수 있어야함
cummax(c(1,54,2,7)) #이거 결과 어떻게 나올지 생각할수 있어야함

#집합 연산자도 알아야함
union() #합집합
intersect() #교집합
setdiff() # 차집합

sin(90/180*pi) #sin 90도 값을 구하는방법 매우 중요함(시험에 나옴)
cos(60/180*pi) #cos 60도 값을 구하는 방법

#문제 R00-0710
v1=round(seq(-pi,pi,length=10),digits = 2);v1

df=data.frame(radian=round(seq(-pi,pi,length=10),digits = 2),
              sin=round(sin(v1),digits = 2),
              cos=round(cos(v1),digits = 2));df
plot(df$radian,df$sin,type="l",col="blue",
     ylab="",xlab="",main="삼각함수 그래프") #데이터 시각화

lines(df$radian,df$cos,tyle="l",col="red",)
legend("topleft",c("sin(x)","cos(x)"),fill=c("blue","red"))
grid()


#문제 R00-0711

v1=seq(-180,180,length=10);v1
v2=round(v1/180*3.14,digits = 2);v2


df2=data.frame(deg=v1,
               radian=v2,
              sin=round(sin(v2),digits = 2),
              cos=round(cos(v2),digits = 2));df2

#문제 R00-0301

xx <- seq(-2*pi, pi, 0.1)
yy.sin <- sin(xx)
yy.cos <- cos(xx)
plot(xx, yy.sin, type = "l", col = "blue", 
     ylab = "", xlab = "", main = "삼각함수 그래프")

lines(xx, yy.cos, type = "l", col = "red")
legend("topleft", c("sin(x)", "cos(x)"), fill=c("blue", "red"))
grid()

#문제 R00-0302
x <- seq(-10, 10, length.out = 100)
sigmoid <- function(x) {
  return (1 / (1 + exp(-x)))
}
sigmoid_deriv <- function(x) {
  s <- sigmoid(x)
  return (s * (1 - s))
}
y1 <- sigmoid(x)
y2 <- sigmoid_deriv(x)
plot(x, y1, type = "l", col = "blue", ylim = c(0, 1), main = "Sigmoid function")
lines(x, y2, col = "red")
grid()

#문제 R00-0303

x <- seq(-6, 1*pi, length.out = 100)
y <- sin(x)

data <- data.frame(x = x, y = y)

plot(data$y ~ data$x, type = "l", xlab = "x", ylab = "sin(x)", main = "sin(x)",col="blue")
grid()
