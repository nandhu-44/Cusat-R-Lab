reverse_list <- function(lst) {
  if (length(lst) <= 1) {
    return(lst)
  } else {
    return(c(tail(lst, 1), reverse_list(head(lst, -1))))
  }
}

cat("Enter a list of elements separated by spaces: ")
input_string <- readline()
input_list <- unlist(strsplit(input_string, " "))

reversed_list <- reverse_list(input_list)

cat("Reversed list:", paste(reversed_list, collapse = " "), "\n")