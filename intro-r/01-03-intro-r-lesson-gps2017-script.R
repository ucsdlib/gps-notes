cats <- read.csv(file = "data/feline-data.csv")
cats
cats$weight
cats$coat
cats$weight + 2
paste("my cat is", cats$coat)
cats$weight + cats$coat
typeof(cats$weight)
typeof(1+1i)
cats <- read.csv(file = "data/feline-data_v2.csv")
typeof(cats$weight)
cats$weight + 2
class(cats)
cats <- read.csv(file="data/feline-data.csv")
my_vector <-  vector(length=3)
my_vector
another_vector <- vector(mode='character', length=3)
str(another_vector)
str(cats$weight)
combine_vector <- c(2,6,3)
combine_vector
quiz_vector <- c(2,6,'3')
str(quiz_vector)
coercion_vector <- c("a", TRUE)
coercion_vector
another_coercion_vector <- c(0, TRUE)
another_coercion_vector
character_vector_example <-  c('0','2','4')
character_vector_example
character_coerced_to_numeric <- as.numeric(character_vector_example)
character_coerced_to_numeric
ab_vector <- c('a', 'b')
ab_vector
combine_example <-  c(ab_vector, 'swc')
combine_example
mySeries <-  1:10
mySeries
seq(10)
names_example <-  5:8
names(names_example) <-  c("a", "b", "c", "d")
names_example
str(cats$weight)
str(cats$likes_string)
coats <-  c("tabby", "tortiseshell", 'tortiseshell', 'black', 'tabby')
coats
str(coats)
CATegories <- factor(coats)
class(CATegories)
?str
