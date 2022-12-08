# statsdist
Statistical Distance R Package

statsdist is an R package that calculates statistical distances between two discrete probability distributions.  Specificially, this package calculates the total variation distance and the Kullback-Liebler divergence (relative entropy) of the two distributions inputted by the user.  Additionally, we can graph the barplots of these discrete probability distributions in this package.

# Installation
First install the R package devtools available on CRAN, if it is not already installed.  This package provides us with the function ```install_github()``` that enables installing packages directly from github to R with the following command.

Type the following command in R:
```
R> install.packages("devtools")
R> library(devtools)
# install R package that statsdist depends on before running the next line 
# see details below
R> install_github("Zmhiga/statsdist")
```

The statsdist package depends on the ggplot2 package to graph the barplots of these discrete probability distributions.  As you may not have installed this package on your computer, you may use the following command line for installation before running function ```install_github()```:
```
R> install.packages("ggplot2")
```

# Using statsdist
After installation, load the statsdist package into R:
```
R> library(statsdist)
```
To bring up the documentation of the package:
```
R> library(help = statsdist)
```
