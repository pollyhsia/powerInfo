plotPower <- function(buildingsPower)
{
  library(ggplot2)
  #load("./powerIndex/R/power.RData")  
  #id = c(1,2,5)
  #buildingsPower = power[1:24,id]
  ggplot(data=buildingsPower, 
         aes(x=buildingsPower[,2], 
             y=buildingsPower[,3], group=1)) +
    geom_line()
}

plotPower2 <- function(test)
{
  plot(test[,2] ,test[,4], xlab = "功率", ylab = "用電度數")
}

powerAnalysis <- function(test)test
{
  oldname = names(test)
  names(test) = c(oldname[1], "功率", oldname[3], "用電度數", oldname[5:13])
  newname = names(test)
  attach(test)
  reg = lm(用電度數~功率)
  summary(reg)
}
  