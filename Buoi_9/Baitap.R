
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

# Câu 3
ggplot(df, aes(x = Temp, y = Wind)) +
  
  geom_point(
    colour = "black",
    size = 2
  ) +
  
  geom_smooth(
    method = "lm",
    colour = "forestgreen",
    fill = "royalblue",
    alpha = .25
  ) +
  
  stat_regline_equation(
    aes(label = after_stat(rr.label)),
    color = "blue",
    label.x = 88,
    label.y = 21
  ) +
  
  stat_cor(
    aes(label = after_stat(p.label)),
    color = "blue",
    label.x = 88,
    label.y = 19
  ) +
  
  labs(
    title = "Wind ~ Temp",
    x = "Temp",
    y = "Wind"
  ) +
  
  theme_bw(base_size = 12)

# CÂU 4
df_kq <- readRDS("D:/UEH/Truc_Quan_Hoa-He_Thong_Thong_Tin_Dia_Ly/Buoi_9/bar1.rds")
library(dplyr)
library(ggplot2)

df_kq <- readRDS("bar1.rds")

df_kq$semester <- factor(
  df_kq$semester,
  levels = c("3rd","4th","5th","6th",">6th")
)

ggplot(df_kq,
       aes(x = semester,
           y = mean_score,
           fill = gender)) +
  
  geom_col(
    position = position_dodge(0.8),
    width = .7
  ) +
  
  geom_errorbar(
    aes(
      ymin = mean_score - sd,
      ymax = mean_score + sd
    ),
    width = .2,
    position = position_dodge(.8)
  ) +
  
  geom_point(
    aes(y = maximum),
    colour = c("#F8766D","#00BFC4"),
    position = position_dodge(.8),
    size = 2
  ) +
  
  scale_fill_manual(values = c(
    Female="#F8766D",
    Male="#00BFC4"
  )) +
  
  labs(
    x = "semester",
    y = "mean_score"
  ) +
  
  theme_bw(base_size = 12)

setwd("D:/UEH/Truc_Quan_Hoa-He_Thong_Thong_Tin_Dia_Ly/Buoi_9")

df_kq <- readRDS("bar1.rds")