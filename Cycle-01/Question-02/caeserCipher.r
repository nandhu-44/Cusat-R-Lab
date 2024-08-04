# String Encryption Write a program that reads a sentence from the user and encrypts it using a simple Caesar cipher.
# The user can specify the shift value.
# Implement the encryption such that only alphabetic
# characters are shifted, while maintaining their case.

# define the caeser cipher function
# Define the Caesar cipher function
caesar_cipher <- function(text, shift) {
  # Function to shift a single character
  shift_char <- function(char, shift, alphabet) {
    if (char %in% alphabet) {
      index <- which(alphabet == char)
      new_index <- (index - 1 + shift) %% length(alphabet) + 1
      return(alphabet[new_index])
    } else {
      return(char)
    }
  }
  
  # Define the lowercase and uppercase alphabets
  lowercase <- letters
  uppercase <- LETTERS
  
  # Split the text into characters
  chars <- strsplit(text, NULL)[[1]]
  
  # Apply the shift to each character
  encrypted_chars <- sapply(chars, function(char) {
    if (char %in% lowercase) {
      shift_char(char, shift, lowercase)
    } else if (char %in% uppercase) {
      shift_char(char, shift, uppercase)
    } else {
      char
    }
  })
  
  # Combine the characters back into a single string
  encrypted_text <- paste(encrypted_chars, collapse = "")
  
  return(encrypted_text)
}

# Function to read input from the user and encrypt the sentence
read_from_user <- function() {
  sentence <- readline(prompt = "Enter a sentence: ")
  shift <- as.integer(readline(prompt = "Enter the shift value: "))
  
  encrypted_sentence <- caesar_cipher(sentence, shift)
  
  cat("\nEncrypted Sentence:", encrypted_sentence, "\n")
}

# Call the function to read input and encrypt the sentence
read_from_user()

