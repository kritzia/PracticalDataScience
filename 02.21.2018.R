x <- rnorm(1000)
mean(x)

sampleMeans <- rep(NA, 50)
for(i in 1:50) {
  
  x <- rnorm(1000)
  print(mean(x))
}

for(i in 1:50){ 
  x <- rnorm(10, mean = 1, sd = 5)
             sampleMeans[i] = mean (x)}

hist(sampleMeans)

samplingDist <- function(samples = 50, sample_size = 100){
  sampleMeans <- rep(NA, samples)
  for(i in 1:50){ 
    x <- rnorm(sampleMeans, mean = 1, sd = 5)
    sampleMeans[i] = mean (x)} 
  return(sampleMeans) 

hist(samplingDist())


library(tidyverse)
DF <- data.frame(
  s100 = samplingDist(250, 100)
                 s10 = samplingDist(250, 150)
                 s100 = samplingDist(250, 150)
                 s500 = samplingDist(250, 500)
                 s1000 = samplingDist(250, 1000)
                 s2000 = samplingDist(250, 2000)) %>%
  gather(sampleSize, sampleMeans)
         

x <- rnorm(100)
  
tt <- t.test(x)


x <- rnorm(100)

TT <- t.test(x)
TT$conf.int

