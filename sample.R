random_samples <- function(dataset) {    
  sampsize <- 100
  if(nrow(dataset) < sampsize){
    sampsize <- nrow(dataset)
  }
  set.seed(round(nrow(dataset)*100/sampsize,digits=2)/100)
  out <- dataset[sample(nrow(dataset), sampsize, replace = FALSE, prob = NULL),]
  return(data.frame(out))
}
