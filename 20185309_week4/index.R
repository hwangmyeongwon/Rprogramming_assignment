v1 = c(1:6)
v2 = c('H','T')

v3 = sample(v1,10,replace = T)
v4 = sample(v2,10,replace = T)


paste(v3,v4,sep=",")

paste0(v3,",",v4)

# paste는 sep을 이용하여 공백을 구분하고 paste0은 sep을 사용하지 않음


#원형 그래프 
s1 = sample(c(1:6),10,replace = T); s1
pie(s1,main='주사위 빈도수')

##################  데이터 분석시작(1) ##################
s1 = sample(c(1:6),20,replace = T); s1

#연산이 필요한 대표값 3차대푯값
sum(s1)
mean(s1)
var(s1)
sd(s1)

#정렬이 필요한 대표값 1차대푯값
min(s1)
max(s1)
median(s1) #중간값

s1
sort(s1)
sort(s1,decreasing = T)  #정렬방향
median(s1)

#박스 플롯
summary(s1)
boxplot(s1) #시각화 수염그림 cf.cadle chart



# 바 플롯
table(s1)
barplot(s1)  #항목을 비교할때 사용 (클래스 크기)
barplot(table(s1))

#바플롯을 디자인 작업
class(table(s1)) #table

barplot(table(s1),main='주사위 빈도수',
        col = rainbow(length(table(s1))),
        names.arg = c('1번','2번','3번','4번','5번','6번'),
        horiz = T,
        xlim = c(0,10), #x축 범위 지정
        xlab='빈도', ylab= '주사위')
grid()