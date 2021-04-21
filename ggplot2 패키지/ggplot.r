# read.table 함수를 사용하여 중간고사 성적 데이터 불러오기
df_midterm <- read.table("data/midterm.txt", header = T)

# ggplot2 패키지 불러오기
library(ggplot2)
# dplyr 패키지 불러오기
library(dplyr)

# 엘리스에서 그래프를 그리기 위한 코드
source("elice_utils.R")
jpeg(filename = "/elice/project_file/Rplot1.jpg",width = 480, height = 480, units = "px")

# 1. ggplot 함수를 사용하여 x축에는 class, y축에는 all을 입력하기
ggplot(df_midterm, aes(x = class, y = all))

# 2. 1번에서 작성한 코드를 지운 후, 체인 함수를 이용해 x축에는 english, y축에는 math를 입력하기
df_midterm %>% ggplot(aes(x=english, y=math))

# 엘리스에서 그래프를 그리기 위한 코드
dev.off()
elice_send_image("Rplot1.jpg")
