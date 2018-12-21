San Diego Burritos
================
Mine Çetinkaya-Rundel
2018-01-31

The data
========

Kaggle: SD Burritos
-------------------

The data come from [Kaggle.com](https://www.kaggle.com/srcole/burritos-in-san-diego):

> Mexican cuisine is often the best food option is southern California. And the burrito is the hallmark of delicious taco shop food: tasty, cheap, and filling. Appropriately, an effort was launched to critique burritos across the county and make this data open to the lay burrito consumer.

``` r
burritos <- read_csv("../data/burritos_01022018.csv")
```

    ## Warning: Duplicated column names deduplicated: 'Salsa' => 'Salsa_1' [50]

    ## Parsed with column specification:
    ## cols(
    ##   .default = col_character(),
    ##   Yelp = col_double(),
    ##   Google = col_double(),
    ##   Cost = col_double(),
    ##   Hunger = col_double(),
    ##   `Mass (g)` = col_integer(),
    ##   `Density (g/mL)` = col_double(),
    ##   Length = col_double(),
    ##   Circum = col_double(),
    ##   Volume = col_double(),
    ##   Tortilla = col_double(),
    ##   Temp = col_double(),
    ##   Meat = col_double(),
    ##   Fillings = col_double(),
    ##   `Meat:filling` = col_double(),
    ##   Uniformity = col_double(),
    ##   Salsa = col_double(),
    ##   Synergy = col_double(),
    ##   Wrap = col_double(),
    ##   overall = col_double()
    ## )

    ## See spec(...) for full column specifications.

About the data
--------------

At this time, the data set contains ratings from over 385 burritos fromd 102 restaurants.

There are 10 core dimensions of the San Diego burrito:

1.  Volume
2.  Tortilla quality
3.  Temperature
4.  Meat quality
5.  Non-meat filling quality
6.  Meat-to-filling ratio
7.  Uniformity
8.  Salsa quality
9.  Flavor synergy
10. Wrap integrity

All of these measures (except for Volume) are rated on a scale from 0 to 5, 0 being terrible, and 5 being optimal. Other information available for each burrito includes an overall rating, cost, Yelp rating of the restaurant, and more.

Glimpse at the data
-------------------

Exploratory data analysis
=========================

Reviewer counts
---------------

First let's take a look at who the reviewers are:

``` r
burritos_rev_count <- burritos %>%
  mutate(Reviewer = fct_lump(Reviewer, n = 5)) %>%
  count(Reviewer) %>%
  mutate(Reviewer = fct_reorder(Reviewer, n, .desc = TRUE)) %>%
  arrange(desc(n))
burritos_rev_count
```

    ## # A tibble: 8 x 2
    ##   Reviewer     n
    ##   <fct>    <int>
    ## 1 Scott      139
    ## 2 Other      135
    ## 3 Emily       58
    ## 4 Ricardo     17
    ## 5 Sage        15
    ## 6 Luis        10
    ## 7 Richard     10
    ## 8 <NA>         1

``` r
ggplot(data = burritos_rev_count, mapping = aes(x = Reviewer, y = n)) +
    geom_bar(stat = "identity") +
    labs(title = "Distribution of reviewers", x = "", y = "")
```

![](sd-burritos_files/figure-markdown_github/unnamed-chunk-2-1.png)

Seems like Scott has been eating a lot of burritos!

Overall rating vs. cost
-----------------------

Next we visualize the relationship between the cost and overall rating of the burritos. The relationship appears to be positive, though the one extremely expensive burrito makes it difficult to assess the strength of the relationship.

    ## Warning: Removed 9 rows containing missing values (geom_point).

![](sd-burritos_files/figure-markdown_github/unnamed-chunk-3-1.png)
