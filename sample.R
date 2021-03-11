random_samples <- function(dataset) {   
  # Change the sampsize to the number of random samples required on the output.
  sampsize <- 100
  if(nrow(dataset) < sampsize){
    sampsize <- nrow(dataset)
  }
  set.seed(round(nrow(dataset)*100/sampsize,digits=2)/100)
  out <- dataset[sample(nrow(dataset), sampsize, replace = FALSE, prob = NULL),]
  # The row below returns the sample number to a field called sample_id that should have been previously created in Tableau Prep
  out$sample_id <- 1:nrow(out)
  return(data.frame(out))
}
