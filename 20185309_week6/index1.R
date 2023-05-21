#R00-0202
v1=sample(c(1:6),10,replace = T)
v2=sample(c('T','H'),10,replace = T)
paste0("(",v1,",",v2,")",collapse = ',')


#R00-0509
input <- "abcdefghijklmnopqrstuvwxyz"

# 알파벳 모음을 언더바로 치환
vowels <- c("a", "e", "i", "o", "u")
output <- strsplit(input, "")[[1]]
output[output %in% vowels] <- "_"

# 결과 출력
print(output)


#R00-0520
# 1부터 50까지의 자연수
v1 = seq(1:50); v1
v1 = c(1:50); v1

# 3의 배수 또는 5의 배수 값 필터링
v_or = v1[v1 %% 3 == 0 | v1 %% 5 == 0]
v_and = v1[v1 %% 3 == 0 & v1 %% 5 == 0]

v_or

v6 = v_or[!v_or %in% v_and]; v6
v7 = sum(v6)

paste0("[원소] ", paste(v6, collapse = " "), " --> [합] ", v7)

#문제 R00-0530

v1=c(1600,2700,3900);v1
q500 = v1%/%500 ;q500 #quotient 몫
r500 = v1 - 500*q500; r500 #Remainder 나머지
q100 = r500%/%100; q100
r100 = r500 - 100*q100; r100

m1=cbind(q500,q100);
m1=rbind(q500,q100);
colnames(m1) = c('500원','100원')
rownames(m1)=v1;m1

v1=c(1600,2700,3900)
v2=c(500,100)

q500=v1%/%500;q500
r500=v1%%500;r500
q100=r500%/%100;q100
r100=r500%%100;r100

m1=cbind(q500,q100);m1
m1=rbind(q500,q100);m1
colnames(m1)=paste0(v1,'원');m1
rownames(m1)=paste0(v2,'원');m1


