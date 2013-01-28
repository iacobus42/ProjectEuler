# find greatest product of any four adj numbers (up, down, left, right, diag)

# read in data
euler11 <- read.table('~/projectEuler/euler11.txt')
euler11 <- as.matrix(euler11)

product <- function(x){
 result <- 1
 for (index in 1:length(x)){
    result <- result * x[index]
  }
  return(result)
}

# check vertical
maxProduct <- 0
for (col in 1:ncol(euler11)){
  for (startRow in 1:nrow(euler11)-4){
    adjProduct <- product(euler11[c(startRow:startRow+4),col])
    if adjProduct > maxProduct{
      maxProduct <- adjProduct
    }
  }
}

# check hor
for (row in 1:nrow(euler11)){
  for (startCol in 1:ncol(euler11)-4){
    adjProduct <- product(euler11[row, c(startCol:startCol+4)])
    if adjProduct > maxProduct{
      maxProduct <- adjProduct
    }
  }
}

# check diag up right
print(maxProduct)
