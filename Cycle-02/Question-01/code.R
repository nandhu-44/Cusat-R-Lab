# Load the iris dataset
data(iris)

# Set the output to a PNG file with specified dimensions and resolution
png(file = "sepal_petal_length_scatter.png", width = 10, height = 6, units = "in", res = 300)

# Create a scatterplot of Sepal Length vs. Petal Length from the iris dataset
plot(x = iris$Sepal.Length, y = iris$Petal.Length,
     xlab = "Sepal Length (cm)",
     ylab = "Petal Length (cm)",
     main = "Sepal Length vs. Petal Length Scatterplot",
     col = "dodgerblue", 
     pch = 16)

# Turn off the device to save the file
dev.off()
