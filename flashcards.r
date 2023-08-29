play <- function() {
  df <- read.table("flashcards.txt", sep = "\t", header = TRUE)
  while (TRUE) {
    indices <- sample(seq_len(nrow(df)))
    for (index in indices) {
      row <- df[index, ]
      message(row$PL, appendLF = FALSE)
      readline()
      message(" -> ", row$EN, "\n")
    }
  }
}
