library(tidyverse)
library(utf8ify)
library(hexSticker)

# white dice
u <- utf8_collection()
for (i in seq(1, length(u))) {
  cat(paste0(
    paste(unlist(u[i]), collapse = " ")
  ))
}


# create sticker
file_out <- "inst/figures/hex_utf8ify.png"
sticker("inst/figures/utf8ify-background2.png",                      # ggplot
        package = "utf8ify",    # name of package
        p_size = 38,            # size package name
        p_color = "white", #F8BC18",    # color package name
        p_x = 1, p_y = 1,     # x/y package name
        s_x = 1, s_y = 1,    # x/y subplot
        s_width = 1, s_height = 1,
        h_fill = "black", # "#ECEFF1",
        h_color = "darkgrey",
        spotlight = FALSE,
        filename = file_out)
