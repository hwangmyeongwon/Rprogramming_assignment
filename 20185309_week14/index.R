df2 = data.frame(
  stringsAsFactors = FALSE,
  순번 = c(1L,2L,3L,4L,5L,6L,7L,8L,
         9L,10L,11L,12L,13L,14L,15L,16L,17L,18L,19L,
         20L),
  소속팀 = c("인사팀","시설구매팀","중부영업1팀",
          "중부영업2팀","중부영업3팀","남부영업1팀","남부영업2팀","영남영업1팀","영남영업2팀",
          "인사팀","시설구매팀","중부영업1팀","중부영업2팀","중부영업3팀","남부영업1팀",
          "남부영업2팀","영남영업1팀","영남영업2팀","인사팀","시설구매팀"),
  이름 = c("공영호","김성수","이정호","박성진",
         "김건우","최민서","김서윤","최준혁","김우진","이은경","김영진","유병철",
         "이상현","오정훈","이지영","김도현","최수빈","이진우","김정수","이예진"),
  직급 = c("부장","부장","부장","부장","차장",
         "차장","차장","차장","과장","과장","과장","과장","대리","대리","대리",
         "사원","사원","사원","사원","사원"),
  메뉴명 = c("치킨마요","치킨마요","치킨마요","치킨마요",
          "치킨마요","참치마요","참치마요","치킨마요","돈까스도련님도시락","치킨제육도시락",
          "치킨마요","돈까스도련님도시락","돈까스도련님도시락","왕치킨마요","동백도시락",
          "메가고기고기","왕카레돈까스덮밥","진달래도시락","메가고기고기","메가고기고기")
)
df2

install.packages("clipr")
install.packages("dplyr")
library(dplyr)
df2 %>% filter(직급 == "부장")

# dlpyr 파이프연산자 %>% 사용가능
# https://thebook.io/080217/ch07/01/02/


clipr::write_clip(df2 %>% filter(직급 == "부장"))



order=read.csv("order.csv")
team=read.csv("team.csv")
unit_price=read.csv("unit_price.csv")

getwd() #현재 디렉토리 알아내기



#문제: 메뉴별로 몇 개씩 주문해야 할까?

unit_price_table <- read.table("unit_price.csv", header = TRUE, sep = ",")
unit_price_df <- as.data.frame(unit_price_table)
unit_price_df

# order.csv 파일을 불러옵니다.
order_data <- read.csv("order.csv")

# "메뉴명" 열의 값에 대한 테이블을 생성합니다.
menu_table <- table(order_data$메뉴명)

# 테이블을 데이터 프레임으로 변환합니다.
menu_df <- as.data.frame(menu_table)

# "수량" 열 이름을 지정합니다.
colnames(menu_df) <- c("메뉴명", "수량")

# unit_price.csv 파일을 불러옵니다.
unit_price <- read.csv("unit_price.csv", header = TRUE, stringsAsFactors = FALSE)

# menu_df와 unit_price를 "메뉴명"을 기준으로 결합합니다.
merged_df <- merge(menu_df, unit_price, by = "메뉴명")

#내림 차순 정렬
merged_df=merged_df[order(merged_df$수량, decreasing = TRUE), ]

#"단가.원." 열 제거
merged_df=merged_df[, !(colnames(merged_df) %in% c("단가.원."))]
merged_df
View(merged_df)








#문제: 본부별로 얼마의 예산이 필요할까?


#team.csv, order.csv, unit_price 파일을 각각 불러옵니다.
team <- read.csv("team.csv", header = TRUE, stringsAsFactors = FALSE)
order_data <- read.csv("order.csv", header = TRUE, stringsAsFactors = FALSE)
unit_price <- read.csv("unit_price.csv", header = TRUE, stringsAsFactors = FALSE)

# team.csv에서 "본부"와 "팀" 열을 추출합니다.
team_subset <- team[, c("본부", "팀")]

# order.csv에서 "소속팀"과 "메뉴명" 열을 추출합니다.
order_subset <- order_data[, c("소속팀", "메뉴명")]

# unit_price.csv에서 "메뉴명"과 "단가.원." 열을 추출합니다.
unit_price_subset <- unit_price[, c("메뉴명", "단가.원.")]

# team_subset과 order_subset을 병합합니다.
merged_team_order <- merge(team_subset, order_subset, by.x = "팀", by.y = "소속팀")
merged_team_order
merged_team_order=merged_team_order[, !(colnames(merged_team_order) %in% c("팀"))]
merged_team_order



merged_team_order <- merge(merged_team_order, unit_price, by.x = "메뉴명", by.y = "메뉴명")
merged_team_order
merged_team_order=merged_team_order[, !(colnames(merged_team_order) %in% c("메뉴명"))]
merged_team_order

merged_team_order$`단가.원.` <- gsub(",", "", merged_team_order$`단가.원.`)

# "단가.원."을 숫자형으로 변환합니다.
merged_team_order$`단가.원.` <- as.numeric(merged_team_order$`단가.원.`)

budget_by_team <- tapply(merged_team_order$`단가.원.`, merged_team_order$본부, sum)
budget_df <- data.frame(본부 = names(budget_by_team), 예산 = budget_by_team, stringsAsFactors = FALSE)
rownames(budget_df) <- NULL

budget_df

