# PRACTICE USING GGPLOT2
# book: https://r4ds.had.co.nz/data-visualisation.html#data-visualisation

# load required packages (if you are using R locally, install them first)
library(tibble)
library(ggplot2)
library(gapminder)

# view header of the dataset
gapminder

# view help file for the dataset
?gapminder


# replace the _____ with the correct syntax
# for each question, spend a minute to interpret the plot


# generate a histogram of life expectancy
ggplot(data = gapminder, mapping = aes(x = lifeExp)) +
  geom_histogram()


# generate the same histogram, adjusting bins as you prefer
# note geom_histogram() uses the stat_bin() layer
# see https://ggplot2.tidyverse.org/reference/geom_histogram.html
ggplot(data = gapminder, mapping = aes(x = lifeExp)) +
  geom_histogram(bins = 50) # number of bins

ggplot(data = gapminder, mapping = aes(x = lifeExp)) +
  geom_histogram(binwidth = 50) # width of each bin


# generate separate histograms of life expectancy for each continent
# hint: think how to split your plots to show different subsets of data
ggplot(data = gapminder, mapping = aes(x = lifeExp)) +
  geom_histogram() +
  facet_wrap(facets = vars(continent))


# compare the distribution of life expectancy by continent, by generating a boxplot
# to interpret see https://www.mathbootcamps.com/how-to-read-a-boxplot/
ggplot(data = gapminder, mapping = aes(x = continent, y = lifeExp)) +
  geom_boxplot()


# generate a scatterplot of the relationship between per capita GDP and life expectancy
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point()


# add a smoothing line to the scatterplot using the "lm" method 
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp)) +
  geom_point() +
  geom_smooth(method = "lm")


# use the color aesthetic to identify whether this relationship differs by continent
ggplot(data = gapminder,
       mapping = aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  geom_smooth()


# add a title to the last graph you generated
ggplot(data = gapminder,
       mapping = aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  geom_smooth() +
  ggtitle('GDP per Capita by Continent')


# identify the outlying countries on the right-side of the graph
# by labeling each observation with the country name
ggplot(data = gapminder,
       mapping = aes(x = gdpPercap, y = lifeExp, label = country)) +
  geom_smooth() +
  geom_text()