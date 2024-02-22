library(tidyverse)
library(modeldata)

View(insurance)
ggplot(insurance,aes(x =age,y= charges,))+geom_point() +
  labs(x ="age",y="charges",title = "Insurance Plan Analysis",
       caption = "koggle_Datasets(2007)")

ggplot(insurance,aes(x =age,y= charges,
                     color =region)) + geom_point() +
  labs(x ="age",y="charges",title = "Insurance Plan Analysis",
       caption = "koggle_Datasets(2007)")




ggplot(insurance,aes(x =age,y= charges,))+geom_point() +geom_smooth() +
  labs(x ="age",y="charges",title = "Insurance Plan Analysis",
       caption = "koggle_Datasets(2007)")

ggplot(insurance,aes(x =age,y= charges,
                     color =region)) + geom_point() + geom_smooth(method = "lm",se = FALSE)+
  labs(x ="age",y="charges",title = "Insurance Plan Analysis",
       caption = "koggle_Datasets(2007)")


#other plot

ggplot(insurance,aes(x=bmi)) + geom_histogram(bins = 15)



ggplot(insurance,aes(x=bmi)) + geom_freqpoly(bins = 15)

ggplot(insurance,aes(x=region)) + geom_bar(color="lightpink",fill="lightblue",bins = 15)



ggplot(insurance,aes(x=region,fill = region)) + geom_bar(bins = 15)



#boxplot two compare two variable
ggplot(insurance,aes(x=region,y=charges,color=region)) +geom_boxplot(show.legend =FALSE ) +
  scale_color_brewer(palette = "Dark2")+theme_minimal()





