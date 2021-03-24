

library(ISLR)

College
summary(College)

maxF_UnderGrad = max(College$F.Undergrad)
maxP_UnderGrad = max(College$P.Undergrad)
maxUnderGrad = maxF_UnderGrad + maxP_UnderGrad
maxUnderGrad

library(ggplot2)

#ggplot(data = College) + geom_point(mapping = aes(x = Top10perc, y = Outstate)) + geom_smooth(mapping = aes(x = Top10perc, y = Outstate), level = 0.95)

ggplot(data = College) + geom_point(mapping = aes(x=Top10perc, y=Outstate))
                                     