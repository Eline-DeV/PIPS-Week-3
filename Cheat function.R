# function contains 'path' which is my wd
#define path and assignment objects to change which file function opens

path <- getwd()
file <- "Assignment_3_Eline_de_Vries.R"

cheat <- function(q_number) {
  Assign_3 <- readLines(paste(path, "Assignment_3_Eline_de_Vries.R", sep = "/"))
  Start_Q <- paste0("#Q3.1.", as.character(q_number), " -----------------------------------------------------------------------")
  place_q_start <- unlist(grep(Start_Q, Assign_3))
  End_Q <- paste0("#Q3.1.", as.character(q_number+1), " -----------------------------------------------------------------------")
  place_q_end <- unlist(grep(End_Q, Assign_3))
  Assign_3[place_q_start:place_q_end]
}

cheat(12)
cheat(15)
cheat(17)