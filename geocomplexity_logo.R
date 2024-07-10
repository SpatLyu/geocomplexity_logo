library(showtext)
showtext_auto(enable = TRUE)
font_add("ShineTypewriter", regular = "./ShineTypewriter-lgwzd.ttf")
library(hexSticker)
library(magick)

sticker(
  subplot = "./gislayers.jpg",
  s_x = 1,
  s_y = 1.15,
  s_width = .7,
  s_height = .7,
  package = "geocomplexity",
  p_family = "ShineTypewriter",
  p_size = 12.5,
  p_color = ggplot2::alpha("#8297a0",.75),#ggplot2::alpha("#3e3221",.75),
  p_x = 1.01,
  p_y = 0.45,
  dpi = 300,
  asp = 1,
  h_size = 1.05,
  h_color = ggplot2::alpha("#8297a0",.75),
  h_fill = ggplot2::alpha('#ffffff',0),
  white_around_sticker = F,
  filename = "geocomplexity_logo.png"
)

image_read('./geocomplexity_logo.png') |> 
  image_resize("256x256")|> 
  image_write('./geocomplexity_logo.png')