setwd('~/Desktop/gps-r/') #sets the working directory
list_example <- list(1, "a", TRUE, 1+4i) #creates a list
list_example[[1]] #grabs first element
matrix_example <- matrix(0, ncol=6, nrow=3) 
matrix_example[1,1] #grabs value at first row and column 
cats <- read.csv(file="data/feline-data.csv")
age <- c(3, 5, 7, 10) 
cats <- cbind(cats, age) #throws error because age vector longer than three
age <- c(3, 5, 7) #making a vector
cats <- cbind(cats, age) #now cbind works
cats
newRow<- list("tortoiseshell", 3.3, TRUE, 10) #create a row to add to cats
cats <- rbind(cats, newRow) #throws error b/c coat is a factor, but did add a row
cats #added a row with 'na' in the place of coat
str(cats)
levels(cats$coat) #use levels to see the levels in the factor
levels(cats$coat) <- c(levels(cats$coat), 'tortoiseshell') #add 'tortoiseshell' to the levels
str(cats)
levels(cats$coat) #now has tortoiseshell 
cats <- rbind(cats, newRow) #adding the row now works
cats
cats$coat <- as.character(cats$coat) #we can convert a factor to a character vector
str(cats)
