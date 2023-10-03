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
ggplot(data = ________, mapping = aes(x = ________)) +
  geom________()


# generate the same histogram, adjusting bins as you prefer
ggplot(data = ________, mapping = aes(x = ________)) +
  geom________()


# generate separate histograms of life expectancy for each continent
# hint: think how to split plots to show different subsets of data
ggplot(data = ________, mapping = aes(x = ________)) +
  geom________() +
  ________(facets = vars(________))


# compare the distribution of life expectancy by continent, by generating a boxplot
ggplot(data = ________, mapping = aes(x = ________, y = ________)) +
  geom________()


# generate a scatterplot of the relationship between per capita GDP and life expectancy
ggplot(data = ________, mapping = aes(x = ________, y = ________)) +
  geom________()


# add a smoothing line to the scatterplot using the "lm" method 
ggplot(data = ________, mapping = aes(x = ________, y = ________)) +
  geom________() +
  geom________()


# use the color aesthetic to identify whether this relationship differs by continent
ggplot(data = ________,
       mapping = aes(x = ________, y = ________, color = ________)) +
  geom________() +
  geom________()


# add a title to the last graph you generated
ggplot(data = ________,
       mapping = aes(x = ________, y = ________, color = ________)) +
  geom________() +
  geom________() + 
  ggtitle(______________)
  

# identify the outlying countries on the right-side of the graph
# by labeling each observation with the country name
ggplot(data = ________,
       mapping = aes(x = ________, y = ________, label = ________)) +
  geom________() +
  geom________()