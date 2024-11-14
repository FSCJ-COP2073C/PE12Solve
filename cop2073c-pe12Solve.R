# cop2073c-pe12Solve.R
# D. Singletary
# 11/12/24
# Use ggplot2 to visualize the mpg dataset

# install.packages('ggplot2') # uncomment if required
library(ggplot2)

# Plot highway mileage (hwy) versus number of cylinders (cyl)
ggplot(data = mpg) +
  geom_point(
    mapping = aes(x = cyl, y = hwy, color = fl, size = displ),
    alpha = 0.7
  ) +
  scale_color_discrete(name = "Fuel Type") +
  labs(
    title = "Highway Mileage vs. Number of Cylinders",
    subtitle = "With Engine Displacement Represented by Point Size",
    x = "Number of Cylinders",
    y = "Highway Miles per Gallon (MPG)",
    caption = "Data from the 'mpg' dataset in ggplot2"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),
    plot.subtitle = element_text(hjust = 0.5, size = 12),
    axis.title = element_text(size = 12),
    legend.position = "bottom"
  )
