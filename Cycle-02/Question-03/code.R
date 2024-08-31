# Install and load the ggplot2 package for advanced data visualization
install.packages("ggplot2")
library(ggplot2)

# Load the mtcars dataset
data(mtcars)

# Convert the 'cyl' and 'am' columns to factors for categorical plotting
mtcars$cyl <- factor(mtcars$cyl)
mtcars$am <- factor(mtcars$am)

# Create a bar plot showing the count of cylinders grouped by transmission type
ggplot(data = mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = "dodge") +
  scale_fill_manual(values = c("dodgerblue", "firebrick"),
                    labels = c("Automatic", "Manual")) +
  labs(title = "Cylinders Distribution by Transmission Type",
       x = "Cylinder Count",
       y = "Frequency",
       fill = "Transmission Mode") +
  theme_minimal()
