# Load the libraries
library(ggplot2)
library(scales)

# Set seed for reproducibility
set.seed(123456789)

# Generate sample data
n <- 120  # Number of circles
data <- data.frame(
  x = runif(n, 0, 256),
  y = runif(n, 0, 256),
  size = runif(n, 1, 81),
  fill = runif(n)
)

# Create the plot
p <- ggplot(data, aes(x = x, y = y)) +
  geom_point(aes(size = size, color = fill), shape = 16, alpha = 0.4) +
  scale_size(range = c(3, 15)) +
  scale_color_gradientn(colors = rainbow(10), guide = "none") +
  theme_void() +
  theme(legend.position = "none") +
  coord_fixed(ratio = 1)

# Save the plot
ggsave("./geocomplexity_bgplot.png", plot = p, 
       width = 256, height = 256, units = "px", dpi = 72)
