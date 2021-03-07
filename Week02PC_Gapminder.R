---
title: "Week02PC_Gapminder"
author: "Andrew Croft"
date: "07/03/2021"
output: pdf_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
library(tidyverse)
library(gapminder)
data(gapminder)
```

## Introduction

In this document, we will be exploring the Gapminder dataset.

## Observations of Gapminder

### Countries with life expectancy less than 30

```{r}
gapminder %>% filter(lifeExp<30)
```

So let's look at Afghanistan's Life Expectancy over time
```{r Afghanistan Life Expectancy over Time}
data01 <- gapminder %>% filter(country=="Afghanistan") %>% select(year,lifeExp)
plot(data01$year, data01$lifeExp,type="b")
```
And Rwanda's Life Expectancy over time
```{r Rwanda Life Expectancy over Time}
data02 <- gapminder %>% filter(country=="Rwanda") %>% select(year,lifeExp)
plot(data02$year, data02$lifeExp,type="b")
```


### Countries with life expectancy greater than 81

```{r}
gapminder %>% filter(lifeExp>81) 
```

So let's look at Afghanistan's Life Expectancy over time
```{r Afghanistan Life Expectancy over Time}
data01 <- gapminder %>% filter(country=="Afghanistan") %>% select(year,lifeExp)
plot(data01$year, data01$lifeExp,type="b")
```
And Rwanda's Life Expectancy over time
```{r Rwanda Life Expectancy over Time}
data02 <- gapminder %>% filter(country=="Rwanda") %>% select(year,lifeExp)
plot(data02$year, data02$lifeExp,type="b")
```








## Including Plots

You can also embed plots, for example:

```{r pressure, echo=FALSE}
plot(pressure)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
