getSumOfDivisors <- function(x) {
    dx <- 1
    if (sqrt(x) <= 2) {
        return(dx)
    }
    for (index in 2:sqrt(x)) {
        if (x %% index == 0) {
            if (index == x / index) {
                dx <- dx + index
            }
            else {
                dx <- dx + index + x / index
            }
        }
    }
    dx
}

data <- matrix(NA, nrow = 28123, ncol = 2)
data[, 1] <- 1:28123
data[, 2] <- sapply(data[, 1], getSumOfDivisors)
ambunNum <- (data[, 2] > data[, 1])
sumOfTwo <- numeric(48608784)
testValues <- data[, 1][ambunNum == TRUE]
count = 1
# this is probably the WORST possible way to do this problem as this double 
# loop calculates ~25 million floating points. And it does it in R which is 
# exactly the wrong place to calculate 25 million floating points in a loop.
# however, I don't care enough to move the existing code over to Python or 
# write a function to call with .C(). But YOU probably should. :)
for (ii in seq(1:6965)) {
    print(ii)
    for (jj in seq(ii:6965)) {
        sumOfTwo[count] <- testValues[ii] + testValues[jj]
        count <- count + 1
    }
}
sumOfTwoUni <- unique(sumOfTwo)
notSum <- data[, 1][!(data[, 1] %in% sumOfTwo)]
sum(notSum)