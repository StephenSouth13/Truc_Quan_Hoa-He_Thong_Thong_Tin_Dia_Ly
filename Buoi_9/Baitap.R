
install.packages(c("ggplot2","ggpubr","dplyr"))

library(ggplot2)
library(ggpubr)
library(dplyr)

# CÂU 1


df <- airquality

ggplot(df, aes(x = Temp, y = Wind)) +
  geom_point(
    colour = "black",
    size = 2
  ) +
  labs(
    x = "Temp",
    y = "Wind"
  ) +
  theme_bw(base_size = 12)

# Câu 2
ggplot(df, aes(x = Temp, y = Wind)) +
  
  geom_point(
    colour = "black",
    size = 2
  ) +
  
  geom_smooth(
    method = "lm",
    colour = "green",
    fill = "blue",
    alpha = .25
  ) +
  
  labs(
    x = "Temp",
    y = "Wind"
  ) +
  
  theme_bw(base_size = 12)