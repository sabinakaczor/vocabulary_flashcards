play <- function(from = "") {
  df <- read.table("flashcards.txt", sep = "\t", header = TRUE)
  while (TRUE) {
    indices <- sample(seq_len(nrow(df)))
    for (index in indices) {
      if (from != "") {
        to <- if (from == "PL") "EN" else "PL"
      } else {
        dir <- sample(c("PL", "EN"))
        from <- dir[1]
        to <- dir[2]
      }
      row <- df[index, ]
      message(row[[from]], appendLF = FALSE)
      readline()
      message(" -> ", row[[to]], "\n")
    }
  }
}
