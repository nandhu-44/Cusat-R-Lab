# Load the mtcars dataset
data(mtcars)

# Convert the 'carb' column to a factor for categorical visualization
mtcars$carb <- factor(mtcars$carb)

# Load the ggplot2 library for advanced plotting
library(ggplot2)

# Create a scatter plot of Displacement vs. Weight, colored by the number of carburetors
ggplot(data = mtcars, aes(x = disp, y = wt, color = carb, size = carb)) +
  geom_point(alpha = 0.7) +
  geom_smooth(method = "loess", se = FALSE, color = "darkgray", linetype = "dashed") +
  scale_color_brewer(palette = "Dark2") +
  labs(title = "Displacement vs Weight by Number of Carburetors",
       x = "Engine Displacement (cu.in.)",
       y = "Vehicle Weight (1000 lbs)",
       color = "Carburetor Count",
       size = "Carburetor Count") +
  theme_minimal()
