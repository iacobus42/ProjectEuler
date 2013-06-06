getSumOfDivisors <- function(x) {
    dx <- 1
    if (sqrt(x) < 2) {
        return(dx)
    }
    for (index in 2:sqrt(x)) {
        if (x %% index == 0) {
            dx <- dx + index + x / index
        }
    }
    dx
}

data <- matrix(NA, nrow = 10000, ncol = 3)
data[, 1] <- 1:10000
# an ambitious person can probably use the parallel package and run this on
# multiple cores using parlapply but I am not feeling that awesome right now
# plus I am lazy
data[, 2] <- sapply(data[, 1], getSumOfDivisors)
data[, 3] <- sapply(data[, 2], getSumOfDivisors)
amNum <- (data[, 1] == data[, 3] & data[, 1] != data[, 2])
sum(data[, 1][amNum == TRUE])