## Part 1: Debugging

my.num <- 6
initials <- "?. ?."

my.vector <- c(my.num, initials)

# run ?sum to get more info
vector.sum <- sum(my.vector)

# Describe why this doesn't work: 
# this does not work because the elements' type are different

install.packages("stringr")

my.line <- "Hey, hey, this is the library"

print(str_length(my.line))

# Describe why this doesn't work: 
# this does not work because the 'stringr' libirary is not imported 

said.the.famous <- paste(my.line, " - ", initial)

# Describe why this doesn't work: 
# the variable 'initial' is not defined  


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be
vector.a <- c(1,2,3,4,5,6,7)
print(typeof(vector.a))
# the vector's type is considered 'double'

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function (vector.1, vector.2) {
  N <- abs(str_length(vector.1) - str_length(vector.2))
  return (paste("The difference in lengths is", N))
}

# Pass two vectors of different length to your `CompareLength` function
vector.b <- c(1,2,3)
difference <- CompareLength(vector.a, vector.b)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(vector.1, vector.2) {
  length.1 <- str_length(vector.1)
  length.2 <- str_length(vector.2)
  if(length.1 > length.2){
    return (paste("Your first vector is longer by", length.1 - length.2,"elements"))
  }else{
    return (paste("Your second vector is longer by", length.2 - length.1,"elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function
difference.1 <- DescribeDifference(vector.a, vector.b)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one
CombineVectors <- function (vector.1, vector.2, vector.3) {
  result <- c(vector.1, vector.2, vector.3)
  return(result)
}

# Send 3 vectors to your function to test it.
vector.c <- c(0, 0, 0, 0)
combination <- CombineVectors(vector.a, vector.b,vector.c)


# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters
CapsTime <- function(courses){
  return (tolower(courses))
}

