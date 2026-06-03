# Chuẩn bị dữ liệu
trees -> df
names(df) <- c("duong_kinh", "chieu_cao", "the_tich")


# ============================================================
# ĐỒ THỊ [1a]
# ============================================================

old_par <- par(no.readonly = TRUE)   # lưu trạng thái gốc

par(bg = "white",
    pty = "s")                       # vùng plot luôn là hình vuông

plot(df$duong_kinh, df$the_tich,
     type = "o",
     pch  = 21,
     bg   = "yellow",
     col  = "blue",
     lwd  = 1.5,
     xlim = c(0, 30),
     ylim = c(0, 100),
     xlab = "Đường kính (inch)",
     ylab = expression(paste("Thể tích (ft"^3, ")")),
     col.lab  = "red",               # nhãn trục = đỏ
     col.axis = "black",             # số trục = đen
     main     = "Tương quan giữa đường kính và thể tích\ncủa cây black cherry",
     col.main = "darkgreen",         # tiêu đề = xanh lá đậm
     font.main = 2,                  # tiêu đề in đậm
     panel.first = {
       rect(par("usr")[1], par("usr")[3],
            par("usr")[2], par("usr")[4],
            col = "white", border = "black")
       grid(nx = 6, ny = 5,
            col = "gray70", lty = "solid", lwd = 0.7)
     }
)
lines(df$duong_kinh, df$the_tich, col = "purple", lwd = 1.5)
points(df$duong_kinh, df$the_tich,
       pch = 21, bg = "yellow", col = "blue", cex = 1.2)

par(old_par)                         # reset về trạng thái gốc


# ============================================================
# ĐỒ THỊ [1b]
# ============================================================

old_par <- par(no.readonly = TRUE)   # lưu trạng thái gốc

par(bg = "gray80",                   # background ngoài = xám
    pty = "s")                       # vùng plot luôn là hình vuông

plot(df$duong_kinh, df$the_tich,
     type = "o",
     pch  = 21,
     bg   = "yellow",
     col  = "blue",
     lwd  = 1.5,
     xlim = c(0, 30),
     ylim = c(0, 100),
     xlab = "Đường kính (inch)",
     ylab = expression(paste("Thể tích (ft"^3, ")")),
     main = "Tương quan giữa đường kính và thể tích\ncủa cây black cherry",
     panel.first = {
       # Dùng rect() để tô màu background vùng plot = vàng nhạt
       rect(par("usr")[1], par("usr")[3],
            par("usr")[2], par("usr")[4],
            col = "lightyellow", border = NA)
     }
)
lines(df$duong_kinh, df$the_tich, col = "purple", lwd = 1.5)
points(df$duong_kinh, df$the_tich,
       pch = 21, bg = "yellow", col = "blue", cex = 1.2)

par(old_par)                         # reset về trạng thái gốc


# ============================================================
# ĐỒ THỊ [1c]
# ============================================================

old_par <- par(no.readonly = TRUE)   # lưu trạng thái gốc

par(bg = "lightgreen",               # background ngoài = xanh lá
    pty = "s")                       # vùng plot luôn là hình vuông

plot(df$duong_kinh, df$the_tich,
     type = "o",                     # vẽ cả điểm và đường nối
     pch  = 21,                      # hình tròn có thể tô màu fill
     bg   = "yellow",                # fill điểm = vàng
     col  = "blue",                  # viền điểm = xanh dương
     lwd  = 1.5,                     # độ dày đường nối
     col.lab  = "black",
     xlim = c(0, 30),
     ylim = c(0, 100),
     xlab = "Đường kính (inch)",
     ylab = expression(paste("Thể tích (ft"^3, ")")),
     main = "Tương quan giữa đường kính và thể tích\ncủa cây black cherry",
     panel.first = {
       rect(par("usr")[1], par("usr")[3],
            par("usr")[2], par("usr")[4],
            col = "lightyellow", border = NA)
       grid(nx = 6, ny = 5,
            col = "red", lty = "dashed", lwd = 0.8)
     }
)
lines(df$duong_kinh, df$the_tich, col = "purple", lwd = 1.5)
points(df$duong_kinh, df$the_tich,
       pch = 21, bg = "yellow", col = "blue", cex = 1.2)

par(old_par)                         # reset về trạng thái gốc

# ============================================================
# ĐỒ THỊ [1d]
# ============================================================

old_par <- par(no.readonly = TRUE)   # lưu trạng thái gốc

par(bg = "lightgreen",
    pty = "s")                       # vùng plot luôn là hình vuông

plot(df$duong_kinh, df$the_tich,
     type = "n",                     # chưa vẽ gì, chỉ tạo khung
     xlim = c(0, 30),
     ylim = c(0, 100),
     xlab = "Đường kính (inch)",
     ylab = expression(paste("Thể tích (ft"^3, ")")),
     main = "Tương quan giữa đường kính và thể tích\ncủa cây black cherry",
     panel.first = {
       rect(par("usr")[1], par("usr")[3],
            par("usr")[2], par("usr")[4],
            col = "lightyellow", border = NA)
       grid(nx = 6, ny = 5,
            col = "red", lty = "dashed", lwd = 0.8)
     }
)

col_alpha <- adjustcolor("blue", alpha.f = 0.5)  # xanh dương 50% trong suốt

for (i in seq_len(nrow(df))) {
  x_i <- df$duong_kinh[i]
  y_i <- df$the_tich[i]
  lines(c(x_i, x_i), c(0, y_i),   col = col_alpha, lwd = 1)  # đường dọc
  lines(c(0, x_i),   c(y_i, y_i), col = col_alpha, lwd = 1)  # đường ngang
}

lines(df$duong_kinh, df$the_tich, col = "purple", lwd = 1.5)
points(df$duong_kinh, df$the_tich,
       pch = 21, bg = "yellow", col = "blue", cex = 1.2)

par(old_par)                         # reset về trạng thái gốc