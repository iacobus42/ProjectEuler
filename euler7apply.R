testValues <- matrix(NA, nrow = 75000, ncol = 3)
testVector <- testValues[, 1] <- c(2, seq(3, 150000, 2)) 

isPrime <- function(x){
    sqrtX = sqrt(x)
    prime = TRUE
    testValue = 2
    while (testValue <= sqrtX & prime == TRUE){
        if (x %% testValue == 0) {
            prime = FALSE
        }
        else {
            if (testValue == 2) {
                testValue = testValue + 1
            }
            else {
                testValue = testValue + 2
            }
        }
    }
    return(prime)
}

testValues[, 2] <- sapply(testVector, FUN = isPrime)
testValues[, 3] <- cumsum(testValues[, 2])
testValues[testValues[,3] == 10001 & testValues[,2] == 1][1] 