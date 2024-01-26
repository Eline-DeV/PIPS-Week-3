devtools::install_github("djnavarro/flametree")
library(flametree)

#Adapted from flametree package. Adjustments allow for generation with seed input only

make_art <- function(Seed){
  set.seed(Seed)
  art_colours <- sample(colors(distinct = FALSE), size = 3, replace = FALSE)
  ran_time <- sample(c(1:10), size = 1)
  ran_trees <- sample(c(1:25), size = 1)
  data_structure <- flametree_grow(seed = Seed, time = ran_time, trees = ran_trees)
  back_colours <- sample(colors(distinct = FALSE), size = 1)
  plants <- sample(c("plain","voronoi", "wisp", "nativeflora", "minimal","themegray"), size = 1)
  data_structure %>% flametree_plot(background = back_colours, palette = art_colours, style = plants)
}