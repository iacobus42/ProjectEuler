library(compiler)

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

getNthPrime <- function(n){
    counter = 1
    testValue = 1

    while (counter < n){
        testValue = testValue + 2
        currentPrime = isPrimeCmp(testValue)
        if (currentPrime) {
            counter = counter + 1
        }
    }
    return(testValue)
}

isPrimeCmp <- cmpfun(isPrime)
getNthPrimeCmp <- cmpfun(getNthPrime)

print(getNthPrimeCmp(10001))