#User would need to install and load the 'tidyverse' package to ensure the function works as intended.
#Comment out the next line, if you don't have the 'tidyverse' package installed
#install.packages("tidyverse")
library(tidyverse)

# The function takes a dataframe and a vector of column names to be selected as arguments 
# Returns dataset with selected columns and all lowercase characters in column names.
transform_data <- function(data, selected_cols) {
  if (is.data.frame(data)) {
    # Rename all columns to lowercase
    new_data <- data %>% select(selected_cols)
    colnames(new_data) <- tolower(colnames(new_data))
    return(new_data)
  } else {
    # Return the original data if it's not a data frame
    return(print("Input is not a data frame"))
  }
}

#Testing the function with an in-built R dataset
head(iris)
colnames(iris) # The 'iris' dataset has uppercase characters in column names.

# Let's use the function to transform the column names
selectedcols <- c('Sepal.Length', 'Sepal.Width', 'Species')
new_iris <- transform_data(iris, selected_cols = selectedcols)

# Let's compare and validate the transformation.
colnames(iris) == colnames(lower_colnames_iris)
head(new_iris)