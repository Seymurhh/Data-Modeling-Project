
# Libraries

library(pheatmap)
library(scales)
library(readr)
library(ggmap)
library(ggpubr)
library(hrbrthemes)
library(ggcorrplot)
library(GGally)
library(car)
library(caret)
library(pwr)
library(EnvStats)
library(tidyverse)
library(lmtest)
library(knitr)
library(fastDummies)
library(rmarkdown)
library(markdown)
library(tidyr)
library(MASS)
library(ggplot2)
library(lattice)
library(dplyr)
library(olsrr)
library(nnet)
library(neuralnet)
library(corrplot)
library(gridExtra)
library(fpc)
library(randomForest)
library(rpart)
library(e1071)
library(nnet)
library(kernlab)
library(rpart.plot)
library(rsq)
library(rfPermute)
library(ada)
library(glmnet)
library(stats)
library(Metrics)


# Functions 

# Function to load or download libraries
loadLib = function(libName)
{ 
  if(require(libName, character.only=TRUE))
  {
    ##cat(libName, "loaded properly\n")
  } else {
    cat("Installing", libName, "\n")
    install.packages(libName)
    if(require(libName, character.only=TRUE))
    {
      cat(libName, "loaded properly\n")
    } else {
      stop(c(libName, "not properly installed\n"))
    }
  }
}

# Helper to display regression function with n coefficients
dispRegFunc <- function(reg) {
  coefs <- reg$coefficients
  b0 = coefs[1]
  n <- length(coefs)
  my_formula <- paste0("Y = ", round(b0, digits = 6))
  for (i in 2:n) {
    my_formula <- paste0(my_formula, " + ", round(coefs[i],6), names(coefs)[i])
  }
  my_formula
}

# Function to calculate SSE
sse <- function(predicted, actual) {
  sum((predicted - actual)^2)
}

# Function to calculate RMSE
rmse <- function(predicted, actual) {
  sqrt(mean((predicted - actual) ^ 2))
}

# Function to calculate R2
r_squared <- function(predicted, actual) {
  correlation <- cor(predicted, actual)
  r_squared_value <- correlation^2
  return(r_squared_value)
}

  


  
