memo = {0:0, 1:1}
def recFib(x):
  if x in memo:
    return memo[x]
  else:
    memo[x] = (recFib(x-1)+recFib(x-2))
    return memo[x]

maxFib = 0
n = 0
while maxFib < 1000:
    n = n + 1
    value = recFib(n)
    maxFib = len(str(value))
    print value
print n

