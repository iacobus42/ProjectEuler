source("~/projectEuler/problem22Data.R")

calculateWordValue <- function(x) {
    lengthX <- nchar(x) 
    value <- 0
    for (index in 1:lengthX) {
        letter <- substr(x, index, index)
        value <- value + letterValue(letter)
    }
    value
}
letterValue <- function(letter) {
    scoreTable <- data.frame(letters = LETTERS, score = 1:26)
    scoreTable[scoreTable$letters == letter, ][, 2]
}

easyData <- easyData[order(easyData)]
data <- data.frame(name = easyData, position = 1:5163)
data$score <- sapply(easyData, calculateWordValue)
data$product <- data$score * data$position
sum(data$product)