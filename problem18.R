calculateNewRow <- function(baseRow, marginalRow) {
    newRow <- numeric(length(baseRow))
    for (index in seq(1, length(baseRow))) {
        newRow[index] <- max(c(marginalRow[index] + baseRow[index], 
                               marginalRow[index] + baseRow[index + 1]))
    }
    newRow
}

data <- as.matrix(read.table("~/projectEuler/problem18.csv", sep = ','))
newTriangle <- matrix(NA, nrow = 15, ncol = 15)
newTriangle[15, ] <- data[15, ]

for (index in 14:1) {
    newTriangle[index, ] <- calculateNewRow(newTriangle[index + 1, ], 
                                            data[index, ])
}

newTriangle[1, 1]