v1 = c(1,2,3,4)

seq(1,10,by=0.5)  #1부터 10까지 0.5간격으로 출력
seq(1,10,length=10) #1부터 10까지 10개를 일정한 간격으로 출력

rep(c(1,2,3),times=3)
rep(c(1,2,3),length=10)

letter=letters[1:length(letters)]
letters[length(letters)/2] #중간값 구하기
letter

v1_length = length(v1)
v1_length #변수로 사용가능

v2="hello"
length(v2) #단어의 길이
nchar(v2) #글자의 개수

letters[c(25,26)]
letters[25:26]


v4 = 1:10
v4%%2
letters[v4%%2]


# 문제 R00-0401
letters[seq(2,length(letters),by=2)]#indexing 방법
letters[-seq(1,length(letters),by=2)]
letters[v1%%2 == 0] #mask
letters[(1:10)%%2==0] #mask
letters[(1:length(letters))%%2==0] #mask
letters[c(F,T)] #mask+recycling

# 문제 R00-0402
toupper(letters[seq(2,length(letters),by=2)])
# 
# 마스크(mask)는 R에서 벡터, 행렬, 데이터프레임 등에서 특정한 부분의 값을 추출하기 위해 사용하는 개념입니다. 마스크는 논리값(참 또는 거짓)을 가지는 벡터로서, 추출하고자 하는 부분에 해당하는 값은 참(True)으로, 추출하지 않고자 하는 부분에 해당하는 값은 거짓(False)으로 표시합니다. 마스크는 대괄호([]) 안에서 사용되며, 인덱싱, 슬라이싱 등과 같이 값의 추출에 사용됩니다.

# Recycling은 R에서 벡터의 길이가 다를 때, 자동으로 길이를 맞춰주는 기능입니다. 예를 들어, 길이가 3인 벡터와 길이가 2인 벡터를 더하면 길이가 2인 벡터가 된다는 것은 당연합니다. 그러나 R에서는 이러한 경우에도 자동으로 길이를 맞춰 줍니다. 이를 Recycling 이라고 합니다. 이때 더 짧은 벡터의 값이 반복되어 길이가 맞춰진 벡터를 만듭니다. Recycling은 마스크와 함께 사용될 때, 추출하고자 하는 값의 개수가 마스크 벡터의 길이보다 작을 때 적용됩니다. 이 경우, 마스크 벡터를 반복해서 사용하여 값을 추출합니다.

# 문제 R00-0403
for( i in seq(2,length(letters),by=2)){
  print(letters[i])
}


# 문제 R00-0503
v1 = 11:20; v1

#(1) index 이용 letters[3]
#(2) mask 이용 

#(단, seq() 함수를 이용하시오)
v1[c(1,3,5,7,9)]
v1[seq(1,10,by=2)]

#(단, T/F 인덱스를 이용하시오)
v1[c(T,F,T,F,T,F,T,F,T,F)]
v1[c(F,T,F,T,F,T,F,T,F,T)]
v1[c(T,F)] 

#v1의 길이는 10
#c(T,F) 마스킹백터 길이는 2
#재사용 규칙(Recycling Rule)

#(단, rep() 함수를 이용하시오)
v1[rep(c(T,F),length=10)]
v1[rep(c(T,F),times=5)]

#(단, 인덱스 제거를 이용하시오)
v1[-c(2,4,6,8,10)] 
v1[c(-2,-4,-6,-8,-10)] #이거랑 똑같다.
v1[c(1,3,5,7,9)] #이거랑 똑같다.

#(단, not 연산자를 이용하시오)
v1[!c(F,T)]

#(단, 나머지 연산자를 이용하시오)
v1%%2
v1[v1%%2 == 1] #관계연산자   ==, >, <

v1[v1%%2 != 0]
v1[!(v1%%2 == 0)]

#문제 R00-0505
letters[seq(1,length(letters))]
vec <- letters[1:26]
paste0("(", 1:length(vec), ")", vec)

vec <- letters[1:26]
new_vec <- grep("[aeiou]", vec, value=TRUE, invert=TRUE)
paste0("(", 1:length(new_vec), ")", new_vec)

