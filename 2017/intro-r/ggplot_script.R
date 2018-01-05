install.packages('ggplot2')
library('ggplot2')

data()

head(iris)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point()

myplot <- ggplot(data = iris, aes(x=Sepal.Length, y=Sepal.Width))
myplot + geom_point()

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) + geom_point(size = 3) 


ggplot(data = iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(size=3)

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + geom_point(aes(shape = Species), size = 3)

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
               
ggplot(d2, aes(carat, price, color = color)) + geom_point() + theme_gray()

head(diamonds)

gapminder <- read.csv('data/gapminder-FiveYearData.csv', header=T)
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

ggplot(data = gapminder, aes(x = lifeExp, y = gdpPercap)) + geom_point()

head(gapminder)

ggplot(data = gapminder, aes(x = year, y = lifeExp, color = continent)) + geom_point()

ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line()

ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_line() + geom_point()


?geom_boxplot

library(MASS)

head(birthwt)

ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()


?geom_histogram

h <- ggplot(faithful, aes(x = waiting))
h + geom_histogram(binwidth = 30, colour = "black")

head(faithful)

h + geom_histogram(binwidth = 8, fill = "steelblue", colour = "black")


download.file('https://raw.github.com/karthikram/ggplot-lecture/master/climate.csv','data/climate.csv')

climate <- read.csv("data/climate.csv", header=T)
ggplot(climate, aes(Year, Anomaly10y)) + geom_line()

ggplot(climate, aes(Year, Anomaly10y)) +
  geom_ribbon(aes(ymin = Anomaly10y - Unc10y, ymax = Anomaly10y + Unc10y), 
              fill = "blue", alpha = .1) +
  geom_line(color = "steelblue")

cplot <-  ggplot(climate, aes(Year, Anomaly10y))
cplot <- cplot + geom_line(size = 0.7, color = "black")
cplot <- cplot + geom_line(aes(Year, Anomaly10y + Unc10y), linetype = "dashed", size = 0.7, color = "red")
cplot <- cplot + geom_line(aes(Year, Anomaly10y - Unc10y), linetype = "dashed", size = 0.7, color = "red")
cplot + theme_minimal()

ggplot(data = gapminder, aes(x= year, y=lifeExp, by=country, color= continent)) + 
  geom_line() + geom_point()

ggplot(data = gapminder, aes(x = year, y = lifeExp, by=country)) +
  geom_point() + geom_line(aes(color=continent))

