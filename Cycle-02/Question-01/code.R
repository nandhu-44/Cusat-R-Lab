# Using the ggplot2 package
library(ggplot2)

# Example data
data <- data.frame(
  category = factor(c("A", "B", "C", "A", "B", "C")),
  value = c(4, 3, 8, 6, 5, 9)
)

# Plot the data using the factor levels
ggplot(data, aes(x = category, y = value)) +
  geom_bar(stat = "identity") + xlab("X labels") + 
  ylab("Y labels") 
