v1=c(1600,2700,3900);v1
q500=v1%/%500 ; q500
r500 = v1-500*q500; r500
q100 = r500%/%100; q100
r100 = r500 - 100*q100; r100

m1=cbind(q500,q100);
colnames(m1) = v1
rownames(m1)=c('500원','100원');m1

#문제 R00-0531

v1=c(1600,2700,3900);v1
q500=v1%/%500 ; q500 #3 5 7 몫 
r500 = v1-500*q500; r500 #100 200 400 나머지

q100 = r500%/%100; q100 # 1 2 4
r100 = r500 - 100*q100; r100 #0 0 0

m1=rbind(q500,q100);
rownames(m1) = c('500원','100원')
colnames(m1)=paste0(v1,"원");m1

#문제 R00-0532
matrix_table <- matrix(0,nrow = 9, ncol = 8)
for (i in 2:9) {
  for (j in 1:9) {
    matrix_table[j, i-1] <- i * j 
  }
}
colnames(matrix_table) <- paste0(2:9, "단")
rownames(matrix_table) <- paste("x ", 1:9)


#공백한칸
matrix_table

#문제 R00-0535

save(matrix_table,file="test.rda") #rda파일로 저장

#방법 1
load("test.rda")#저장한 파일 불러오기
for(cc in 2:9){
  for(rr in 1:9)
  {
    if(matrix_table[rr,cc-1]%%2==0)
      matrix_table[rr,cc-1]=0
  }
}
matrix_table

#방법 2
load("test.rda")#저장한 파일 불러오기
matrix_table[matrix_table %% 2 == 0]=0;matrix_table

#방법 3
load("test.rda")#저장한 파일 불러오기
matrix_table =ifelse(matrix_table %% 2 == 0, 0, matrix_table);matrix_table

#방법 4 결과 백터
load("test.rda")#저장한 파일 불러오기
matrix_table[which(matrix_table%%2==0)] = 0; matrix_table




#문제 R00-0536

load("test.rda")#저장한 파일 불러오기

#방법 1
load("test.rda")#저장한 파일 불러오기
for(cc in 2:9){
  for(rr in 1:9)
  {
    matrix_table[rr,cc-1]=-matrix_table[rr,cc-1]
    if(matrix_table[rr,cc-1]%%2==0)
      matrix_table[rr,cc-1]=0
  }
}
matrix_table

#방법 2
load("test.rda")#저장한 파일 불러오기
matrix_table[!(matrix_table %% 2 == 0)]=-matrix_table[!(matrix_table %% 2 == 0)]
matrix_table[matrix_table %% 2 == 0]=0;matrix_table

#방법 3
load("test.rda")#저장한 파일 불러오기
matrix_table <- ifelse(matrix_table %% 2 == 0, 0, -matrix_table);matrix_table

#방법 4 결과 백터
load("test.rda")#저장한 파일 불러오기
matrix_table[which(matrix_table%%2==0)] = 0;
matrix_table[which(matrix_table%%2==1)] = -matrix_table[which(matrix_table%%2==1)];matrix_table


#문제 R00-0540

#방법 1
load("test.rda")#저장한 파일 불러오기
for(cc in 2:9){
  for(rr in 1:9)
  {
    
    if(matrix_table[rr,cc-1]%%3==0 || matrix_table[rr,cc-1]%%5==0)
      matrix_table[rr,cc-1]=0
  }
}
matrix_table

#방법 2
load("test.rda")#저장한 파일 불러오기
matrix_table[matrix_table %% 3 == 0 | matrix_table %% 5 == 0]=0;
0;matrix_table

#방법 3
load("test.rda")#저장한 파일 불러오기
matrix_table = ifelse((matrix_table %% 3 == 0) | (matrix_table %% 5 == 0), 0, matrix_table);

matrix_table

#방법 4 결과 백터
load("test.rda")#저장한 파일 불러오기
matrix_table[which((matrix_table%%3==0)|(matrix_table%%5==0))] = 0;

matrix_table

#문제 R00-0545
load("test.rda")#저장한 파일 불러오기
v1 <- c()
for (rr in seq(1, 9)) {
  v1 <- c(v1, sum(matrix_table[rr,]))
}


v2 <- c()
for (cc in seq(2, 9)) {
  v2 <- c(v2, sum(matrix_table[, cc-1]))
}

matrix_table <- rbind(cbind(matrix_table, v1), c(v2,0))

v2=c(v2,0)
matrix_table <- cbind(matrix_table, v1)
matrix_table <- rbind(matrix_table,v2)

colnames(matrix_table)[9] = "합"
rownames(matrix_table)[10] = "합"
matrix_table


v1=c(1:6)
v1=1:6
v1
table(v1)



input="abcdefghijklmnopqrstuvwxyz"
vow=c("a","e","i","o","u")
output=strsplit(input,"")[[1]]
output[output%in%vow]="_"
output


matrix_table=matrix(0,nrow = 9,ncol=8)

for(i in 2:9){
  for(j in 1:9){
    matrix_table[j,i-1]=j*i
  }
}

matrix_table

colnames(matrix_table)=paste0(2:9,"단")
rownames(matrix_table)=paste("x",1:9)

v1=c()
for(i in 1:9){
  v1=c(v1,sum(matrix_table[i,]))
}
v1

v2=c()
for(i in 2:9){
  v2=c(v2,sum(matrix_table[,i-1]))
}
v2=c(v2,0)

load("test.rda")
m1=rbind(matrix_table,v1)
m1=cbind(m1,v2)

m1
