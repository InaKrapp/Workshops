
# Running an analysis on the diamonds dataset:

library(ggplot2)

ggplot(diamonds, aes(x = price, y = carat)) +
  geom_point() +
  labs(title = "Diamond Price vs. Carat")

library(viridisLite)

r
library(ggplot2)
ggplot(diamonds, aes(x = price, y = carat, color = cut)) +
  geom_point() +
  labs(title = "Diamond Price vs. Carat by Cut",
       color = "Cut")



