
# Data Structures Lesson Notes

Teaching: 40 min

Exercises: 15 min

Questions
* How can I read data in R?
* What are the basic data types in R?
* How do I represent categorical information in R?

Objectives
* To be aware of the different types of data.
* To begin exploring data frames, and understand how it’s related to * vectors, factors and lists.
* To be able to ask questions from R about the type, class, and structure of an object.

## Begin Lesson here

* One of R’s most powerful features is its ability to deal with tabular data




* start by making a toy dataset in your data/ directory, called feline-data.csv:

create data/feline-data.csv using:
* a text editor (Nano) or 
* within RStudio with the File -> New File -> Text File menu item.

add the following data to the file:


```R
coat,weight,likes_string
calico,2.1,1
black,5.0,0
tabby,3.2,1
```

### make sure the data file is saved in the home/data folder


```R
cats  <- read.csv(file = "~/Desktop/gps_r/feline-data.csv")
```


```R
cats
```


<table>
<thead><tr><th></th><th scope=col>coat</th><th scope=col>weight</th><th scope=col>likes_string</th></tr></thead>
<tbody>
	<tr><th scope=row>1</th><td>calico</td><td>2.1   </td><td>1     </td></tr>
	<tr><th scope=row>2</th><td>black</td><td>5    </td><td>0    </td></tr>
	<tr><th scope=row>3</th><td>tabby</td><td>3.2  </td><td>1    </td></tr>
</tbody>
</table>



* he read.csv function is used for reading in tabular data stored in a text file where the columns of data are delimited by commas (csv = comma separated values). 

* Tabs are also commonly used to separated columns - if your data are in this format you can use the function read.delim.

* There is also the general read.table function that is used if the columns in your data are delimited by a character other that commas or tabs. 

With data loaded, we can now explore our data set, pull out columns and specify the musing the **$ operator**:


```R
cats$weight
```


<ol class=list-inline>
	<li>2.1</li>
	<li>5</li>
	<li>3.2</li>
</ol>




```R
cats$coat
```


<ol class=list-inline>
	<li>calico</li>
	<li>black</li>
	<li>tabby</li>
</ol>



We can do other operations on the columns:


```R
## say we discovered that the scale weights two Kg light:
cats$weight + 2
```


<ol class=list-inline>
	<li>4.1</li>
	<li>7</li>
	<li>5.2</li>
</ol>




```R
paste("my cat is", cats$coat)
```


<ol class=list-inline>
	<li>'my cat is calico'</li>
	<li>'my cat is black'</li>
	<li>'my cat is tabby'</li>
</ol>



But what about if we type this:


```R
cats$weight + cats$coat
```

    Warning message in Ops.factor(cats$weight, cats$coat):
    “‘+’ not meaningful for factors”


<ol class=list-inline>
	<li>NA</li>
	<li>NA</li>
	<li>NA</li>
</ol>



* We get a warning message

### understanding what happned here is key to successfully analyzing data in R

# Data Types

The last command we ran returned an error because
* 2.1 + "black" is nonsense
*  If you guess this is the reason, you are right
* you have some intuition for an important concept in programming called
            data types
* for exxample we can ask what type of data something is:


```R
typeof(cats$weight)
```


'double'


### There are 5 main data types:
* double
* integer
* complex
* logical
* character

Here are a few more examples of checking the data type:


```R
typeof(1L)
```


'integer'



```R
typeof(1+1i)
```


'complex'



```R
typeof(TRUE)
```


'logical'



```R
typeof('banana')
```


'character'


*  Note the L suffix to insist that a number is an integer. 
* No matter how complicated our analyses become, all data in R is interpreted as one of these basic data types.

For the next example:
* a user has added details fo another cat.
* this information is in the file data/feline-data_v2.csv



### create feline-data_v2.csv text file in RStudio 
* in file browser view feline-data.csv text file
* in menu select text file
* copy and paste data from feline-data.csv to new file
* add the new data: **tabby,2.3 or 2.4,1**
* save new file as feline-data_v2.csv

Load the new cats data like before, and check what type of data we find in the weight column:




```R
cats  <- read.csv(file="~/Desktop/gps_r/feline-data_v2.csv")
typeof(cats$weight)
```


'integer'


* Oh no, our weights aren’t the double type anymore! 

* If we try to do the same math we did on them before, we run into trouble:



```R
cats$weight + 2
```

    Warning message in Ops.factor(cats$weight, 2):
    “‘+’ not meaningful for factors”


<ol class=list-inline>
	<li>NA</li>
	<li>NA</li>
	<li>NA</li>
	<li>NA</li>
</ol>



### what happened?

* R reads a csv into a table, it insists that everything in a column be the same basic type

* if it can’t understand everything in the column as a double, then nobody in the column gets to be a double

* the table that R loaded our cats data into is called a data.frame and our first example of something called a data structure

* a data structure is a structure that R knows how to build out of basic data types.

* we can see that it is a data.frame by calling the class function on it:


```R
class(cats)
```


'data.frame'


Now, in order to successfully use our data in R, we need to understand what the basic data structures are, and how they behave. 

For now, let’s remove that extra line from our cats data and reload it, while we investigate this behavior further:

in RStudio reload the feline-data.csv


```R
cats  <- read.csv(file="~/Desktop/gps_r/feline-data.csv")
```

# Vectors and Type Coercion

To better understand this behavior, let’s meet another of the data structures: the vector.


```R
my_vector <- vector(length = 3)
my_vector
```


<ol class=list-inline>
	<li>FALSE</li>
	<li>FALSE</li>
	<li>FALSE</li>
</ol>



A vector in R is essentially an ordered list of things, with the special condition:
* that everything in the vector must be the same basic data type. 

* If you don’t choose the datatype, it’ll default to logical; or, you can declare an empty vector of whatever type you like.


```R
another_vector <- vector(mode='character', length=3)
another_vector
```


<ol class=list-inline>
	<li>''</li>
	<li>''</li>
	<li>''</li>
</ol>



You can check if something is a vector:


```R
str(another_vector)
```

     chr [1:3] "" "" ""


The cryptic output from this command indicates the basic data type found in this vector - 
* in this case chr, character; 
* an indication of the number of things in the vector - actually, the indexes of the vector, in this case [1:3]; 
* and a few examples of what’s actually in the vector - in this case empty character strings. 

If we similarly do:


```R
str(cats$weight)
```

     num [1:3] 2.1 5 3.2


we see that that’s a vector, too - the columns of data we load into R data.frames are all vectors, 

* and that’s the root of why R forces everything in a column to be the same basic data type.

## Discussion 1

### Why is R so opinionated about what we put in our columns of data? How does this help us?

#### By keeping everything in a column the same, we allow ourselves to make simple assumptions about our data; 

* if you can interpret one entry in the column as a number, then you can interpret all of them as numbers, so we don’t have to check every time.

* This consistency, like consistently using the same separator in our data files, is what people mean when they talk about clean data; in the long run, strict consistency goes a long way to making our lives easier in R

You can also make vectors with explicit contents with the combine function:


```R
combine_vector <- c(2,6,3)
combine_vector
```


<ol class=list-inline>
	<li>2</li>
	<li>6</li>
	<li>3</li>
</ol>



Thinking about what we have covered so far, what do you thing the following will produce?


```R
quiz_vector <- c(2,6,'3')
```


```R
str(quiz_vector)
```

     chr [1:3] "2" "6" "3"


* This is something called type coercion, and it is the source of many surprises and the reason why we need to be aware of the basic data types and how R will interpret them. 

* When R encounters a mix of types (here numeric and character) to be combined into a single vector, it will force them all to be the same type. 

Now Consider these examples:


```R
coercion_vector <- c('a', TRUE)
coercion_vector

```


<ol class=list-inline>
	<li>'a'</li>
	<li>'TRUE'</li>
</ol>




```R
another_coercion_vector <- c(0, TRUE)
another_coercion_vector
```


<ol class=list-inline>
	<li>0</li>
	<li>1</li>
</ol>



* The coercion rules go: ** logical -> integer -> numeric -> complex -> character, 

* where -> can be read as and transformed into. 


* You can try to force coercion against this flow using the **as.** functions:


```R
character_vector_example <- c('0','2','4')
character_vector_example
```


<ol class=list-inline>
	<li>'0'</li>
	<li>'2'</li>
	<li>'4'</li>
</ol>




```R
character_coerced_to_numeric <- as.numeric(character_vector_example)
character_coerced_to_numeric
```


<ol class=list-inline>
	<li>0</li>
	<li>2</li>
	<li>4</li>
</ol>




```R
numeric_coerced_to_logical <- as.logical(character_coerced_to_numeric)
numeric_coerced_to_logical
```


<ol class=list-inline>
	<li>FALSE</li>
	<li>TRUE</li>
	<li>TRUE</li>
</ol>



* As you can see, some surprising things can happen when R forces one basic data type into another! 

* Nitty-gritty of type coercion aside, the point is: if your data doesn’t look like what you thought it was going to look like, type coercion may well be to blame; 

* make sure everything is the same type in your vectors and your columns of data.frames, or you will get nasty surprises!

* But coercion can also be very useful! 

* For example, in our cats data **likes_string** is numeric, but we know that the 1s and 0s actually represent **TRUE and FALSE** (a common way of representing them). 

* We should use the logical datatype here, which has two states: TRUE or FALSE, which is exactly what our data represents. 

* We can ‘coerce’ this column to be logical by using the **as.logical** function:


```R
cats$likes_string

```


<ol class=list-inline>
	<li>1</li>
	<li>0</li>
	<li>1</li>
</ol>




```R
cats$likes_string <- as.logical(cats$likes_string)
cats$likes_string

```


<ol class=list-inline>
	<li>TRUE</li>
	<li>FALSE</li>
	<li>TRUE</li>
</ol>



**Combine c() or concatenate** will also append things to an existing vector:


```R
ab_vector <- c('a', 'b')
ab_vector
```


<ol class=list-inline>
	<li>'a'</li>
	<li>'b'</li>
</ol>




```R
combine_example <- c(ab_vector, 'SWC')
combine_example
```


<ol class=list-inline>
	<li>'a'</li>
	<li>'b'</li>
	<li>'SWC'</li>
</ol>



You can also make series of numbers:


```R
mySeries <- 1:10
mySeries
```


<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
	<li>5</li>
	<li>6</li>
	<li>7</li>
	<li>8</li>
	<li>9</li>
	<li>10</li>
</ol>




```R
seq(10)
```


<ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
	<li>5</li>
	<li>6</li>
	<li>7</li>
	<li>8</li>
	<li>9</li>
	<li>10</li>
</ol>




```R
seq(1,10, by=0.1)
```


<ol class=list-inline>
	<li>1</li>
	<li>1.1</li>
	<li>1.2</li>
	<li>1.3</li>
	<li>1.4</li>
	<li>1.5</li>
	<li>1.6</li>
	<li>1.7</li>
	<li>1.8</li>
	<li>1.9</li>
	<li>2</li>
	<li>2.1</li>
	<li>2.2</li>
	<li>2.3</li>
	<li>2.4</li>
	<li>2.5</li>
	<li>2.6</li>
	<li>2.7</li>
	<li>2.8</li>
	<li>2.9</li>
	<li>3</li>
	<li>3.1</li>
	<li>3.2</li>
	<li>3.3</li>
	<li>3.4</li>
	<li>3.5</li>
	<li>3.6</li>
	<li>3.7</li>
	<li>3.8</li>
	<li>3.9</li>
	<li>4</li>
	<li>4.1</li>
	<li>4.2</li>
	<li>4.3</li>
	<li>4.4</li>
	<li>4.5</li>
	<li>4.6</li>
	<li>4.7</li>
	<li>4.8</li>
	<li>4.9</li>
	<li>5</li>
	<li>5.1</li>
	<li>5.2</li>
	<li>5.3</li>
	<li>5.4</li>
	<li>5.5</li>
	<li>5.6</li>
	<li>5.7</li>
	<li>5.8</li>
	<li>5.9</li>
	<li>6</li>
	<li>6.1</li>
	<li>6.2</li>
	<li>6.3</li>
	<li>6.4</li>
	<li>6.5</li>
	<li>6.6</li>
	<li>6.7</li>
	<li>6.8</li>
	<li>6.9</li>
	<li>7</li>
	<li>7.1</li>
	<li>7.2</li>
	<li>7.3</li>
	<li>7.4</li>
	<li>7.5</li>
	<li>7.6</li>
	<li>7.7</li>
	<li>7.8</li>
	<li>7.9</li>
	<li>8</li>
	<li>8.1</li>
	<li>8.2</li>
	<li>8.3</li>
	<li>8.4</li>
	<li>8.5</li>
	<li>8.6</li>
	<li>8.7</li>
	<li>8.8</li>
	<li>8.9</li>
	<li>9</li>
	<li>9.1</li>
	<li>9.2</li>
	<li>9.3</li>
	<li>9.4</li>
	<li>9.5</li>
	<li>9.6</li>
	<li>9.7</li>
	<li>9.8</li>
	<li>9.9</li>
	<li>10</li>
</ol>



We can ask a few questions about vectors:


```R
sequence_example <- seq(10)
head(sequence_example, n=2)
```


<ol class=list-inline>
	<li>1</li>
	<li>2</li>
</ol>




```R
tail(sequence_example, n=4)
```


<ol class=list-inline>
	<li>7</li>
	<li>8</li>
	<li>9</li>
	<li>10</li>
</ol>




```R
length(sequence_example)
```


10



```R
class(sequence_example)
```


'integer'



```R
typeof(sequence_example)
```


'integer'


Finally, you can give **names to elements** in your vector:


```R
names_example <- 5:8
names(names_example) <- c("a", "b", "c", "d")
names_example
```


<dl class=dl-horizontal>
	<dt>a</dt>
		<dd>5</dd>
	<dt>b</dt>
		<dd>6</dd>
	<dt>c</dt>
		<dd>7</dd>
	<dt>d</dt>
		<dd>8</dd>
</dl>




```R
names(names_example)
```


<ol class=list-inline>
	<li>'a'</li>
	<li>'b'</li>
	<li>'c'</li>
	<li>'d'</li>
</ol>



## Challenge or Discussion

#### Start by making a vector with the numbers 1 through 26. Multiply the vector by 2, and give the resulting vector names A through Z 

(hint: there is a built in vector called LETTERS)


```R
x <- 1:26
x <- x * 2
names(x) <- LETTERS
```

# Data Frames

Now we are going to briefly cover data frames.  Previously, We said that columns in data.frames were vectors:


```R
str(cats$weight)
```

     num [1:3] 2.1 5 3.2



```R
str(cats$likes_string)
```

     logi [1:3] TRUE FALSE TRUE


These make sense. But what about:


```R
str(cats$coat)
```

     Factor w/ 3 levels "black","calico",..: 2 1 3


# Factors

* Another important data structure is called a factor. 

* Factors usually look like character data, but are typically used to represent categorical information. 

* For example, let’s make a vector of strings labelling cat colorations for all the cats in our study:


```R
coats <- c('tabby', 'tortoiseshell', 'tortoiseshell', 'black', 'tabby')
coats
```


<ol class=list-inline>
	<li>'tabby'</li>
	<li>'tortoiseshell'</li>
	<li>'tortoiseshell'</li>
	<li>'black'</li>
	<li>'tabby'</li>
</ol>




```R
str(coats)
```

     chr [1:5] "tabby" "tortoiseshell" "tortoiseshell" "black" ...


We can turn a **vector into a factor** like so:


```R
CATegories <- factor(coats)
class(CATegories)
```


'factor'



```R
str(CATegories)
```

     Factor w/ 3 levels "black","tabby",..: 2 3 3 1 2


* Now R has noticed that there are three possible categories in our data - but it also did something surprising; 

* instead of printing out the strings we gave it, we got a bunch of numbers instead. 

* R has replaced our human-readable categories with numbered indices under the hood:


```R
typeof(coats)
```


'character'



```R
typeof(CATegories)
```


'integer'


### Challenge 2
http://swcarpentry.github.io/r-novice-gapminder/04-data-structures-part1#challenge-2

#### Is there a factor in our cats data.frame? what is its name? Try using **?read.csv** to figure out how to keep text columns as character vectors instead of factors; then write a command or two to show that the factor in cats is actually a character vector when loaded in this way.

One solution is use the argument **stringAsFactors**:


```R
cats <- read.csv(file="~/Desktop/gps_r/feline-data.csv", stringsAsFactors=FALSE)
str(cats$coat)
```

     chr [1:3] "calico" "black" "tabby"


Another solution is use the argument **colClasses** that allow finer control.


```R
cats <- read.csv(file="~/Desktop/gps_r/feline-data.csv", colClasses=c(NA, NA, "character"))
str(cats$coat)
```

     Factor w/ 3 levels "black","calico",..: 2 1 3


**Note:** new students find the help files difficult to understand; make sure to let them know that this is typical, and encourage them to take their best guess based on semantic meaning, even if they aren’t sure.

* In modelling functions, it’s important to know what the **baseline levels** are. 

* This is assumed to be the first factor, but by default factors are labelled in alphabetical order. 

* You can change this by specifying the **levels**:


```R
mydata <- c("case", "control", "control", "case")
factor_ordering_example <- factor(mydata, levels = c("control", "case"))
str(factor_ordering_example)
```

     Factor w/ 2 levels "control","case": 2 1 1 2


* In this case, we’ve explicitly told R that “control” should represented by 1, and “case” by 2. 

* This designation can be very important for interpreting the results of statistical models!

# Lists

* Another data structure you’ll want in your bag of tricks is the list. 

* A list is simpler in some ways than the other types, because you can put anything you want in it:


```R
list_example <- list(1, "a", TRUE, 1+4i)
list_example
```


<ol>
	<li>1</li>
	<li>'a'</li>
	<li>TRUE</li>
	<li>1+4i</li>
</ol>




```R
another_list <- list(title = "Research Bazaar", numbers = 1:10, data = TRUE )
another_list
```


<dl>
	<dt>$title</dt>
		<dd>'Research Bazaar'</dd>
	<dt>$numbers</dt>
		<dd><ol class=list-inline>
	<li>1</li>
	<li>2</li>
	<li>3</li>
	<li>4</li>
	<li>5</li>
	<li>6</li>
	<li>7</li>
	<li>8</li>
	<li>9</li>
	<li>10</li>
</ol>
</dd>
	<dt>$data</dt>
		<dd>TRUE</dd>
</dl>



* We can now understand something a bit surprising in our data.frame

* what happens if we run:


```R
typeof(cats)
```


'list'


* We see that data.frames look like lists ‘under the hood’ 
    * this is because a data.frame is really a list of vectors and factors, as they have to be 
    * in order to hold those columns that are a mix of vectors and factors, the data.frame needs something a bit more flexible than a vector to put all the columns together into a familiar table. 
    
* In other words, a data.frame is a special list in which **all the vectors must have the same length.**

* In our cats example, we have an integer, a double and a logical variable. 

* As we have seen already, each column of data.frame is a vector.


```R
cats$coat
```


<ol class=list-inline>
	<li>calico</li>
	<li>black</li>
	<li>tabby</li>
</ol>




```R
cats[,1]
```


<ol class=list-inline>
	<li>calico</li>
	<li>black</li>
	<li>tabby</li>
</ol>




```R
typeof(cats[,1])
```


'integer'



```R
str(cats[,1])
```

     Factor w/ 3 levels "black","calico",..: 2 1 3


Each row is an **observation** of different variables, itself a data.frame, and thus can be composed of element of different types.

* **run this code if likes_string is wrong**


```R
cats <- read.csv(file="~/Desktop/gps_r/feline-data.csv")
```


```R
cats$likes_string <- as.logical(cats$likes_string)
```


```R
cats$likes_string
```


<ol class=list-inline>
	<li>TRUE</li>
	<li>FALSE</li>
	<li>TRUE</li>
</ol>



**continue lesson**


```R
cats[1,]
```


<table>
<thead><tr><th></th><th scope=col>coat</th><th scope=col>weight</th><th scope=col>likes_string</th></tr></thead>
<tbody>
	<tr><th scope=row>1</th><td>calico</td><td>2.1   </td><td>1     </td></tr>
</tbody>
</table>




```R
str(cats[1,])
```

    'data.frame':	1 obs. of  3 variables:
     $ coat        : Factor w/ 3 levels "black","calico",..: 2
     $ weight      : num 2.1
     $ likes_string: logi TRUE


# Challenge 3
http://swcarpentry.github.io/r-novice-gapminder/04-data-structures-part1#challenge-3

#### There are several subtly different ways to call variables, observations and elements from data.frames:

* cats[1]
* cats[[1]]
* cats$coat
* cats["coat"]
* cats[1, 1]
* cats[, 1]
* cats[1, ]

Try out these examples and explain what is returned by each one.

**Hint:** Use the function typeof() to examine what is returned in each case.

# Matricies

* Last but not least is the matrix. 

* We can declare a matrix full of zeros:


```R
matrix_example <- matrix(0, ncol=6, nrow=3)
matrix_example
```


<table>
<tbody>
	<tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
	<tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
	<tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
</tbody>
</table>



And similar to other data structures, we can ask things about our matrix:


```R
class(matrix_example)
```


'matrix'



```R
typeof(matrix_example)

```


'double'



```R
str(matrix_example)
```

     num [1:3, 1:6] 0 0 0 0 0 0 0 0 0 0 ...



```R
dim(matrix_example)
```


<ol class=list-inline>
	<li>3</li>
	<li>6</li>
</ol>




```R
nrow(matrix_example)
```


3



```R
ncol(matrix_example)
```


6


# Challenge 6
http://swcarpentry.github.io/r-novice-gapminder/04-data-structures-part1#challenge-6



# Challenge 7
http://swcarpentry.github.io/r-novice-gapminder/04-data-structures-part1#challenge-7


```R

```

# Next Lesson is Data Frames
