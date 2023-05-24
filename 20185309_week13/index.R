library(readxl)
reservation_r <- read_excel("reservation_r_excel.xlsx")
customer_r <- read_excel("customer_r.xlsx")
item_r <- read_excel("item_r.xlsx")
order_info_r <- read_excel("order_info_r.xlsx")


colnames(customer_r) <- tolower(colnames(customer_r))
colnames(reservation_r) <- tolower(colnames(reservation_r))
colnames(order_info_r) <- tolower(colnames(order_info_r))
colnames(item_r) <- tolower(colnames(item_r))

View(customer_r)#엑셀파일 보는 코드

head(customer_r) #엑셀파일을 텍스트로 미리보기(위쪽)
tail(customer_r) #엑셀파일을 텍스트로 미리보기(밑쪽)
str(customer_r)
class(customer_r)
summary(customer_r)
customer_r

dim(customer_r)
ncol(customer_r)
nrow(customer_r)

length(customer_r)
ls()

v1=c(1:10)
ls()
rm(list=ls()) #저장되어있는 변수들을 지움


library(tibble)

?airquality

tb_airquality = as_tibble(airquality);tb_airquality

tb_iris = as_tibble(iris);tb_iris

reservation_r

airquality
tb_airquality = as_tibble(airquality);tb_airquality

table(airquality$Month)
table(airquality[['Month']]) #리스트 데이터 프레임


?iris
tb_iris = as_tibble(iris);tb_iris

table(tb_iris$Species)
table(tb_iris[['Species']])



table(reservation_r$branch)
table(reservation_r[['branch']])


airquality
tb_airquality = as_tibble(airquality);tb_airquality

table(airquality$Month)
table(airquality[['Month']])

airquality %>% 
  group_by(Month) %>% 
  summarise(cnt=n())

airquality %>% 
  count(Month) -> df1

class(df1)



?iris
tb_iris = as_tibble(iris);tb_iris

table(tb_iris$Species)
table(tb_iris[['Species']])

tb_iris %>% 
  group_by(Species) %>% 
  summarise(cnt=n()) #종류로 묶고 개수를 n으로 설정함

tb_iris %>% 
  count(Species)



table(reservation_r$branch)
table(reservation_r[['branch']])

reservation_r %>% 
  group_by(branch) %>% 
  summarise(cnt=n())


reservation_r %>% 
  count(branch)

airquality
tb_airquality = as_tibble(airquality);tb_airquality

table(airquality$Month)
table(airquality[['Month']])

airquality %>% 
  group_by(Month) %>% 
  summarise(cnt=n())

airquality %>% 
  count(Month) -> df1

class(df1)



?iris
tb_iris = as_tibble(iris);tb_iris

table(tb_iris$Species)
table(tb_iris[['Species']])

tb_iris %>% 
  group_by(Species) %>% 
  summarise(cnt=n())

tb_iris %>% 
  count(Species)



table(reservation_r$branch)
table(reservation_r[['branch']])

reservation_r %>% 
  group_by(branch) %>% 
  summarise(cnt=n())


reservation_r %>% 
  count(branch)

#문제 R00-1001
airquality
tb_airquality = as_tibble(airquality);tb_airquality

table(airquality$Month)
table(airquality[['Month']])

airquality %>%
  group_by(Month) %>%
  summarise(cnt=n())

airquality %>%
  count(Month) 

#문제 R00-1000
df <- tibble(
  x = sample(10, 100, rep = TRUE),
  y = sample(10, 100, rep = TRUE)
)
df
