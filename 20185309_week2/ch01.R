tmp0 = c(1:10)

sum <- 0
difference <- 0

for(i in tmp0){
  sum <- sum+i
}

avg <- sum/length(tmp0)

for(i in tmp0){
  difference <- difference + (avg-i)**2
}
variation <- difference/(length(tmp0)-1)


cat("값을 구하고 두가지 방법의 결과가 같은지 확인\n")
cat("합 : ",sum, sum(tmp0) ,"\n")
cat("평균 = ",avg, mean(tmp0) ,"\n")
cat("분산 = ",variation, var(tmp0),"\n")
cat("표준편차 = ",sqrt(variation), sd(tmp0),"\n")


sample(tmp0,100,replace = T)

sample(c("H","T"),10,replace = T)




sample(c(1:10),10) -> v1;v1

median(v1)
sort(v1) -> v2;v2

mean(c(v2[length(v2)/2],
       v2[length(v2)/2+1]))


