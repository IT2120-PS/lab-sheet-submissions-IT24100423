getwd()
setwd("C:\\Users\\it24100423\\Desktop\\IT24100423")

branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")
print(branch_data)

str(branch_data)
head(branch_data)

boxplot(branch_data$Sales_X1, main = "Boxplot of Sales",ylab ="sales")

five_num_summary <- fivenum(branch_data$Advertising_X2)
iqr_advertising <- IQR(branch_data$Advertising_X2)
print(five_num_summary)
print(iqr_advertising)

find_outliers <- function(v){
  v <- v[!is.na(v)]
  q1 <- quantile(v, .25); q3 <- quantile(v, .75); iqr <- q3-q1
  lower <- q1 - 1.5*iqr; upper <- q3 + 1.5*iqr
  list(values = v[v<lower | v>upper],
       lower_fence = lower,
       upper_fence = upper)
}
find_outliers(branch_data$Years)
