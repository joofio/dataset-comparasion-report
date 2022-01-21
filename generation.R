## synthetic with 

library(synthpop)
X <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.cleveland.data",sep=",",header = FALSE)
X

str(X)

synth.obj <- syn(X,  seed = 1024,maxfaclevels = 4300)

mycols <- c("darkmagenta", "turquoise")
compare1<-compare(synth.obj, X, nrow = 3, ncol = 4, cols =mycols)
compare1$tables
compare1

compare1$synth.obj$syn

write.csv(synth.obj$syn,"synth.csv")

