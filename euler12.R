findTri <- function(div = 500){
  nDiv <- 0
  tri <- 0
  index <- 0
  while (nDiv <= div){
    index <- (index+1)
    tri <- tri+index
    nDiv <- nFactors(tri)
    #print(nDiv>=500)
    }
  return(index)
}

nFactors <- function(x){
  limit <- sqrt(x)
  count <- 0
  for (testDiv in seq(1, floor(limit))){
    if (x %% testDiv == 0){
      count <- count + 1
    }
  }
  count <- count*2
  return(count)
}
findTri(500)