

make_art <- function(Seed){
  library(circlize)
  set.seed(Seed)
  art_colours <- sample(colors(distinct = FALSE), size = 8, replace = FALSE)
  data_gen_nr <- sample(x = 1:100, size = 1, replace = FALSE)
  vis_data <- matrix(data = rnorm(n = data_gen_nr), byrow = TRUE)
  colors <- c(Row1 = art_colours[1], Col2 = art_colours[5],
              Col3 = art_colours[2], Row1 = art_colours[6],
              Row2 = art_colours[3], Row3 = art_colours[7],
              Row4 = art_colours[4], Row5 = art_colours[8])
chordDiagram(vis_data,
             annotationTrack = NULL)

circos.clear()
}
make_art(1)
