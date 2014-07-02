## Kmeans analysis of dendritic spine volume and synpase area

## Set the working directory
setwd('/home/jared/Dropbox/Analysis_data/test_code/')

## Load ggplot2
library(ggplot2)

## Read in the files. Right now we are dealing with 2 files, will have to
## cbind them
psdData <- read.csv('/home/jared/Dropbox/Analysis_data/')
spvolData <- read.csv('ho')

## Always a good idea to have a quick look
View(psdData)
View(spvolData)

## cbind our data file to make matrix. Will need to subset this, accordingly
m = as.matrix(cbind(mml_base$spVol, mml_base$CFA.Tot),ncol=2)

## Confirm that our cbind was performed correctly

## hunting for 2 clusters
clr = (kmeans(m,2))

## Plot clusters 
ggplot(data=mml_base, aes(x=spVol, y=CFA.Tot, color=cluster )) + 
        geom_point() + 
        geom_point(data=centers, aes(x=V1,y=V2, color='Center')) +
        geom_point(data=centers, aes(x=V1,y=V2, color='Center'), size=52, 
                   alpha=.3, legend=FALSE)
