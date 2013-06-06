ones <- c("one", "two", "three", "four", "five", "six", "seven", "eight", 
          "nine")
teens <- c("ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", 
           "sixteen", "seventeen", "eighteen", "nineteen")
twenty <- c("twenty", paste("twenty", ones, sep = ''))
thirty <- c("thirty", paste("thirty", ones, sep = ''))
forty <- c("forty", paste("forty", ones, sep = ''))
fifty <- c("fifty", paste("fifty", ones, sep = ''))
sixty <- c("sixty", paste("sixty", ones, sep = ''))
seventy <- c("seventy", paste("seventy", ones, sep = ''))
eighty <- c("eighty", paste("eighty", ones, sep = ''))
ninety <- c("ninety", paste("ninety", ones, sep = ''))
onehundred <- c("onehundred", paste("onehundredand", c(ones, teens, twenty,
                                                       thirty, forty, fifty, 
                                                       sixty, seventy, eighty,
                                                       ninety), sep = ''))
twohundred <- c("twohundred", paste("twohundredand", c(ones, teens, twenty,
                                                       thirty, forty, fifty, 
                                                       sixty, seventy, eighty, 
                                                       ninety), sep = ''))
threehundred <- c("threehundred", paste("threehundredand", c(ones, teens, 
                                                             twenty, thirty, 
                                                             forty, fifty, 
                                                             sixty, seventy, 
                                                             eighty, ninety), 
                                        sep = ''))
fourhundred <- c("fourhundred", paste("fourhundredand", c(ones, teens, twenty,
                                                          thirty, forty, fifty, 
                                                          sixty, seventy, 
                                                          eighty, ninety), 
                                      sep = ''))
fivehundred <- c("fivehundred", paste("fivehundredand", c(ones, teens, twenty,
                                                          thirty, forty, fifty, 
                                                          sixty, seventy, 
                                                          eighty, ninety), 
                                      sep = ''))
sixhundred <- c("sixhundred", paste("sixhundredand", c(ones, teens, twenty,
                                                       thirty, forty, fifty, 
                                                       sixty, seventy, 
                                                       eighty, ninety), 
                                    sep = ''))
sevenhundred <- c("sevenhundred", paste("sevenhundredand", c(ones, teens, 
                                                             twenty, thirty, 
                                                             forty, fifty, 
                                                             sixty, seventy, 
                                                             eighty, ninety),
                                        sep = ''))
eighthundred <- c("eighthundred", paste("eighthundredand", c(ones, teens, 
                                                             twenty, thirty, 
                                                             forty, fifty, 
                                                             sixty, seventy, 
                                                             eighty, ninety), 
                                        sep = ''))
ninehundred <- c("ninehundred", paste("ninehundredand", c(ones, teens, twenty,
                                                          thirty, forty, fifty, 
                                                          sixty, seventy, 
                                                          eighty, ninety), 
                                      sep = ''))
spelledOut <- c(ones, teens, twenty, thirty, forty, fifty, sixty, seventy, 
                eighty, ninety, onehundred, twohundred, threehundred, 
                fourhundred, fivehundred, sixhundred, sevenhundred, 
                eighthundred, ninehundred, "onethousand")
sum(nchar(spelledOut))