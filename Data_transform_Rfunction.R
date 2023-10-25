#User would need to install and load the 'tidyverse' package to ensure the function works as intended.
#Comment out the next line, if you don't have the 'tidyverse' package installed
#install.packages("tidyverse")
library(tidyverse)

# The function takes data frame as an argument and returns dataset with all lowercase characters in column names.
transform_data <- function(data) {
  if (is.data.frame(data)) {
    # Rename all columns to lowercase
    colnames(data) <- tolower(colnames(data))
    return(data)
  } else {
    # Return the original data if it's not a data frame
    return(print("Input is not a data frame"))
  }
}

#Testing the function with an in-built R dataset
head(iris)
colnames(iris) # The 'iris' dataset has uppercase characters in column names.

# Let's use the function to transform the column names
lower_colnames_iris <- transform_data(iris)
colnames(lower_colnames_iris)

# Let's compare and validate the transformation.
colnames(iris) == colnames(lower_colnames_iris)