# PRACTICE USING GGPLOT2
# book 1st Ed: https://r4ds.had.co.nz/data-visualisation.html#data-visualisation
# book 2nd Ed: https://r4ds.hadley.nz/data-visualize

# load required packages (if you are using R locally, install them first)
library(tibble)
library(ggplot2)
library(gapminder)

# save gapminder data in your environment
gapminder <- gapminder

# view first few rows of the dataset
head(gapminder)

# view help file for the dataset
?gapminder


# replace the _____ with the correct syntax
# after you fill the blanks, spend a minute to interpret the plot


# generate a histogram of life expectancy
ggplot(data = gapminder, mapping = aes(x = lifeExp)) +
  geom_histogram()


# generate the same histogram, but this time adjust the number of bins as you prefer
# note geom_histogram() uses stat_bin() as default statistical transformation
# see https://ggplot2.tidyverse.org/reference/geom_histogram.html
ggplot(data = gapminder, mapping = aes(x = lifeExp)) +
  geom_histogram(bins = 50) # number of bins

ggplot(data = gapminder, mapping = aes(x = lifeExp)) +
  geom_histogram(binwidth = 50) # width of each bin (notice the difference)


# generate separate histograms of life expectancy for each continent
# hint: facet_wrap() splits your plot into subplots, each representing a different subsets of data
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
  ggtitle("GDP per Capita and Life Expectancy by Continent")


# now use labs() to add a subtitle and x and y labels 
# labs() is more flexible, can also add subtitle, x-axis label, etc.
ggplot(data = gapminder,
       mapping = aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point() +
  geom_smooth() +
  labs(title = "GDP per Capita and Life Expectancy by Continent",
       subtitle = "Gapminder data",
       x = "GDP per Capita",
       y = "Life Expetancy")
