series <- seq(1, 999)

three <- series[series %% 3 == 0]
five <- series[series %% 5 == 0]
both <- series[series %% 3 == 0 & series %% 5 == 0]

print((sum(three) + sum(five) - sum(both)))