array <- commandArgs(trailingOnly = TRUE)
source("skeleton_PermutationClusteringP.R") 
library(rCASC)
file=paste(getwd(),array[1],sep="/")
index=array[2]
nCluster=read.delim(paste(getwd(),array[3],sep="/"), header=FALSE)
nCluster=substring(nCluster, 1)
permutationClusteringSWP(group="docker", scratch.folder=getwd(), file=file, percent=10, nCluster=nCluster, separator=",", logTen=0, clustering="SIMLR", perplexity=20, seed=111, rK=0, index=index)
