memo = {0:0, 1:1}
def recFib(x):
  if x in memo:
    return memo[x]
  else:
    memo[x] = (recFib(x-1)+recFib(x-2))
    return memo[x]

count = 0
value = 0
fseries = []
while value < 4000000:
  fseries.append(value)
  value = recFib(count)
  count = count + 1

fseriesEven = filter(lambda x: x % 2 == 0, fseries)
print sum(fseriesEven)
