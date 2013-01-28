# find the sum of all primes under 2 million
import math

def isPrime(x):
  prime = True
  possibleFactors = range(2, int(round(math.sqrt(x)))+1)
  for factor in possibleFactors:
    if x % factor == 0:
      prime = False
      break
  return prime

def sumPrimes(limit):
  primes = []
  testValue = 2
  while testValue < limit:
    if isPrime(testValue):
      primes.append(testValue)
      print testValue
    if testValue == 2:
      testValue = 3
    else:
      testValue = testValue + 2
  return sum(primes)

print sumPrimes(2000000)
