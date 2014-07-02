## Nested hierarchical analysis of variance
## Jared B Bowden

## Based on information available here:
## http://ww2.coastal.edu/kingw/statistics/R-tutorials/formulae.html

## Example model: DV ~ condition + animal / dendrite

## Read in the data
df <- read.csv('/home/jared/Dropbox/Code/Test_data/nested_anova_test.csv')

## Have a quick look
View(df)

## Evaluate the variable names
names(df)

## Let's try a simple case first
res1 <- aov(spVol ~ SA.list + rat / series / dendrite, data = df)
summary(res1)


res1 <- aov(spVol ~ SA.list, data = df)
summary(res1)
TukeyHSD(res1)
