run_length_encoding <- function(input_string) {
  encoded_string <- ""
  n <- nchar(input_string)
  
  i <- 1
  while (i <= n) {
    current_char <- substr(input_string, i, i)
    count <- 1
    
    while ((i + count <= n) && (substr(input_string, i + count, i + count) == current_char)) {
      count <- count + 1
    }
    
    encoded_string <- paste0(encoded_string, current_char, count)
    
    i <- i + count
  }
  
  return(encoded_string)
}

cat("Enter a string to compress using run-length encoding: ")
input_string <- readline()

compressed_string <- run_length_encoding(input_string)

cat("Compressed string:", compressed_string, "\n")