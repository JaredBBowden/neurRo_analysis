## Kmeans analysis of dendritic spine volume and synpase area
## Jared B Bowden

## Load ggplot2. 
## If not installed, run: install.packages("ggplot2")
library(ggplot2)

## Set the working directory
setwd('/home/jared/Dropbox/Analysis_data/test_code/')

## Read in the files. Currently designed to work with 2 files.
psdData <- read.csv('/home/jared/Dropbox/Analysis_data/')
spvolData <- read.csv('ho')

## Always a good idea to have a quick look.
View(psdData)
View(spvolData)

## Column bind our data file to make matrix. 
m = as.matrix(cbind(mml_base$spVol, mml_base$CFA.Tot),ncol=2)

## Confirm that our cbind was performed correctly
View(m)

## Kmeans analysis, configured to find 2 clusters
clr = (kmeans(m,2))

## Plot clusters 
ggplot(data=mml_base, aes(x=spVol, y=CFA.Tot, color=cluster )) + 
        geom_point() + 
        geom_point(data=centers, aes(x=V1,y=V2, color='Center')) +
        geom_point(data=centers, aes(x=V1,y=V2, color='Center'), size=52, 
                   alpha=.3, legend=FALSE)


## Next we need to add some code to describe the parameters of these clusters,
## and evaluate their contents.
