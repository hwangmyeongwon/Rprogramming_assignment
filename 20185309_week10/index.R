# <데이터유형 (타입)> ###################
# 3  정수 integer
# 'A'  문자 character
# 3.14  실수 double
# TRUE, FALSE, T, F  logical
# 3+4i 복소수 complex
# factor (보류) #범주형데이터타입

#데이터 변수(컨테이너, 클래스) 5가지
#Vector
#List
#Matrix
#Arrays
#Data frame

#문제 R00-0601

v1 = c(3,4) #vector
v2 = c(4,5)

rbind(v1,v2) #matrix
m1 = matrix(1:12,nrow =3, ncol =4)
m1


matrix(1:12,nrow =3, ncol =4, byrow = T)

arr1 = array(1:24,c(3,4,2)) #3차원 데이터 .. array 3*4 형식의 매트릭스를 2개 생성
arr1


c(4,'A')

#데이터프레임 변수 형태가 달라도 같이 데이터를 모아서 출력하고 저장 가능
df1 = data.frame(aa = 1:5,bb=letters[1:5], cc = as.factor(c(1:5)))
df1

#리스트
lt1 = list(v1,m1,arr1,df1); lt1

lt1[1]


#Data frame과 List는 모두 서로 다른 데이터 유형을 가진 원소들을 포함하는 데이터 변수입니다. 하지만 Data frame은 2차원 행렬과 비슷한 구조를 가지며, 열마다 서로 다른 데이터 유형을 가질 수 있습니다. 반면 List는 일반적으로 다른 클래스의 객체를 원소로 가지며, 구조가 자유로워 열마다 서로 다른 데이터 유형을 가질 수 있지만, 각 원소를 불규칙하게 접근해야 합니다.


#R00-0603 문제
sex = c(1,0,0,1,1,1)

sex.factor = factor(sex, levels = c(1,0),
                    labels = c('남','여'))
sex.factor

table(sex.factor) 
summary(sex.factor)


blood = c('B','A','O','O','B','AB')
blood.factor = as.factor(blood) ; blood.factor #형변환을 이용해서 factor 만드는 방법
blood.factor = factor(blood) ; blood.factor #foctor 함수를 이용해서 ,,,

blood.factor2 = factor(blood,
                       levels = c('A','B','AB','O'),
                       labels = c('BT_A','BT_B','BT_AB','BT_O'))
blood.factor2

#문제 R00-0604

#1. 범주형 데이터 처리
#2. 데이터타입의 크기를 효율적(관리가편하다)으로 관리하기 위해