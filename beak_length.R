
# load packages -----------------------------------------------------------
library(readxl)
library(tidyverse)

# read data ---------------------------------------------------------------

# read the finches data
finches <- read_excel("finches_data.xlsx")

# print the finches tibble in the console
finches

# take a quick look at all the variables in the dataset
# A tibble: 100 x 12
band species sex   first_adult_year last_year outcome weight  wing
<dbl> <chr>   <chr>            <dbl>     <dbl> <chr>    <dbl> <dbl>
  1     9 Geospi~ unkn~             1975      1977 died      14.5  67  
2    12 Geospi~ fema~             1975      1977 died      13.5  66  
3   276 Geospi~ unkn~             1976      1977 died      16.4  64.2
4   278 Geospi~ unkn~             1976      1977 died      18.5  67.2
5   283 Geospi~ male              1976      1977 died      17.4  70.2
6   288 Geospi~ unkn~             1976      1977 died      16.3  71.2
7   293 Geospi~ unkn~             1976      1977 died      15.7  67.2
8   294 Geospi~ unkn~             1976      1977 died      16.8  68.2
9   298 Geospi~ male              1976      1977 died      15.5  68.2
10   307 Geospi~ male              1975      1977 died      17.5  70  
# ... with 90 more rows, and 4 more variables: tarsus <dbl>,
#   beak_length <dbl>, beak_depth <dbl>, beak_width <dbl>


# histogram ---------------------------------------------------------------
ggplot(
  data = finches,                     # use the finches dataset
  mapping = aes(x = beak_length,      # put beak length on the x axis
                fill = outcome)       # fill sets the color of the boxes
) +
  geom_histogram(bins = 14) +         # add the histogram, use 14 bins
  facet_wrap(~ outcome, ncol = 1) +   # outcome is the grouping variable
  guides(fill = FALSE) +              # don't show a legend for fll color
  labs(
    title = "Figure 1.",              # title
    x = "Beak Length (mm)",           # x-axis label
    y = "Number of Birds"             # y-axis label
  )

# histogram of beak length, grouped by survival, with labels


# summarize ---------------------------------------------------------------

# summarize the dataset by outcome (survived vs. died)

# print the results in the console


# bar chart ---------------------------------------------------------------

# bar chart of mean beak lengths


# t-test ------------------------------------------------------------------

# get a vector of beak lengths for birds that died

# print the new object in the console... it is a vector

# get a vector of beak lengths for birds that survived

# print the results in the console

# perform a two-sample t-test assuming unequal variances
