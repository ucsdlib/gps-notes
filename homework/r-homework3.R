##Homework 3 - functions and dplyr
## Due 2/4 - By Midnight 
## HTML Version: https://ucsdlib.github.io/gps-skills-2017/homework/r-homework3-funct-dplyr.html


### How to submit your homework:
# 1. Download the [r-homework3.R](r-homework3.R) script and open in Rstudio
# 2. Rename `r-homework3.R` to `yourlastname_sudentID_r-homework3.R`
# 3. Type the answers in the uncommented lines (those without #). 
# 4. Save the script file.
# 5. Upload the file to tritonEd for Assignment 3.  
                                              
## Questions: 
#                                               
# 1. Write a function called `weighted_mean` that takes a `gapminder` data.frame as an argument and calculates a trimmed or weighted mean of life expectancy by weighing by population.  To do this you will assign the output of a function that calculates the the sum of `lifeExp` times pop divided by the sum of pop to a `weighted_mean` object.  Hint: Look up the `?sum` function. 
#Answer: 

weighted_mean <- function(gapminder) {
  #your weighted mean formula here 
}
                                            
# 2. Use dplyr to filter only rows with the continent of Africa.
#Answer: 

                                            
# 3. Using the filtered `gapminder` data above (only 'Africa' rows) with your `weighted_mean` function in question 1, what is the weighted mean of life expectancy of Africa? 
#Answer: 


# 5. Create a `dplyr` piped sequence that: 
# * Takes gapminder data and uses `group_by` to group by continent
# * Creates a mean variable that conatins the mean of `lifeExp`
# * Creates a `weighted_mean` variable that takes the sum of lifeExp times pop and divides that by the sum of pop -- the same formula you used in question 1 above. 
# * Print out the resulting dataframe as `weight_mean_dp`
# * The resulting data.frame should look like the below.
# Note: You'll need to use the `summarize` function that `dplyr` gives you. 
#Answer: 


# 5. Using the built in `iris` dataset, `dplyr`, `tidyr`, and `ggplot2`, write a script that creates a plot comparing the petal and sepal widths and lengths values for each species of flower. 
# Hint: Start by using tidyr `gather()` function to create a `flowers_df` data frame gathering `Sepal.Length`, `Sepal.Width`, `Petal.Length`, and `Petal.Width` into the key values with `variable` being the ID variable and `value` being the measures. Hint: To express variables you want to `gather` you can use a function like `startsWith()` or use the exclusion operator `-` to tell gather that you want to include everthing but the excluded (e.g `-Species`).
#                                               
# Next use `dplyr` and `ggplot` to create a bar plot comparing the species and values with the geom properties `stat = "identity"` and `position = "dodge"`.
# 
#Answer: 

                                              