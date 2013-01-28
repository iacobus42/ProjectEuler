# sum of squares vs square of sums of the first 100 numbers

sumSquare <- sum(seq(1,100)^2)
squareSum <- sum(seq(1,100))^2

print(squareSum - sumSquare)
