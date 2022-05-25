# creating a dataframe
data <- data.frame(marks1 = c(NA, 22, NA, 49, 75),
                   marks2 = c(81, 14, NA, 61, 12),
                   marks3 = c(78.5, 19.325, NA, 28, 48.002))
data
# using colMeans()
mean_val <- colMeans(data,na.rm = TRUE)

# replacing NA with mean value of each column
for(i in colnames(data))
  data[,i][is.na(data[,i])] <- mean_val[i]
data
