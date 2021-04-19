library(ISLR)
summary(College)
library(ggplot2)
library(tidyverse)
attach(College)
#install.packages("leaps")
library(leaps)
attach(Advertising)

bestsub = regsubsets(formula = Outstate ~ Private + Apps + Accept + Enroll + Top10perc + Top25perc + F.Undergrad + P.Undergrad + Room.Board + Books + Personal + PhD + Terminal + S.F.Ratio + perc.alumni + Expend + Grad.Rate, data = College)

forward = regsubsets(formula = Outstate ~ Private + Apps + Accept + Enroll + Top10perc + Top25perc + F.Undergrad + P.Undergrad + Room.Board + Books + Personal + PhD + Terminal + S.F.Ratio + perc.alumni + Expend + Grad.Rate, data = College, method = "forward")

backward = regsubsets(formula = Outstate ~ Private + Apps + Accept + Enroll + Top10perc + Top25perc + F.Undergrad + P.Undergrad + Room.Board + Books + Personal + PhD + Terminal + S.F.Ratio + perc.alumni + Expend + Grad.Rate, data = College, method = "backward")

summary(bestsub)