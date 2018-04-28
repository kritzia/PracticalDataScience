
#Class 4: Visualization
library(tidyverse)

View(mpg)

ggplot(mpg, aes(x=displ, y= hwy)) +
  geom_point()

#ggplot(data = DATA) +
# geom_function

ggplot(data = mpg)

ggplot(mpg, aes(x= hwy, y=cyl)) +
  geom_point()

ggplot(mpg, aes(class, drv)) +
  geom_point()

ggplot(mpg, aes(x=displ, y= hwy, color = class)) +
  geom_point()

ggplot(mpg, aes(x=displ, y= hwy, size = class)) +
  geom_point()

ggplot(mpg, aes(x=displ, y= hwy, alpha = class)) +
  geom_point()

ggplot(mpg, aes(x=displ, y= hwy, shape = class)) +
  geom_point()

ggplot(mpg, aes(x=displ, y= hwy, shape = class)) +
  geom_point(color= "blue", size= 2)


ggplot(mpg, aes(x=displ, y= hwy, shape = class)) +
  geom_point(color= "pink", size= 2, shape = 11)

ggplot(mpg, aes(x=displ, y= hwy, shape = class)) +
  geom_point(color= "pink", size= 2, shape = 11)


ggplot(mpg, aes(x=displ, y= hwy, shape = class)) +
  geom_point(aes(color= manufacturer, size= 2, shape = 11))

ggplot(mpg, aes(x=displ, y= hwy)) +
  geom_point(aes(color= manufacturer, size= cyl))

ggplot(mpg, aes(x=displ, y= hwy)) +
  geom_point(aes(color= displ < 5)) #doing something out of geom_point will do it to the 
# same data 

##facet 
ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point() +
  facet_wrap(~class)

##facet 
ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point() +
  facet_wrap(~class, ncol =2)

#facet_grid
ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point() +
  facet_grid(drv~cyl)

ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point() +
  facet_grid(drv~.)


ggplot(mpg, aes(x=displ, y = hwy)) +
  geom_point(alpha =.4, position = "jitter") +
  geom_smooth()



ggplot(mpg, aes(x=displ, y = hwy)) +
  geom_point(alpha =.4, position = "jitter", color = "white") +
  geom_smooth(color = "pink") +
  theme_dark()


ggplot(mpg, aes(x=displ, y = hwy)) +
  geom_smooth(color = "pink") +
  geom_point(alpha =.4, position = "jitter", color = "white") +
  theme_dark()

ggplot(mpg, aes(x=displ, y = hwy)) +
  geom_smooth(color = "pink") +
  geom_point(alpha =.4, position = "jitter", color = "white") +
  theme_dark() +
  ylim(c(10,25))

#library(ggthemes)

ggplot(mpg, aes(x=displ, y = hwy)) +
  geom_smooth(color = "pink") +
  geom_point(alpha =.4) +
  ylim(c(10,25))

ggplot(mpg, aes(x=displ, y=hwy, color=class)) +
  geom_point() +
  geom_smooth() + 
  facet_wrap(~class)







