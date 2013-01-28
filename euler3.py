# 600851475143
import math
def primeTest(x):
  isPrime = True
  lessValues = range(2, int(math.ceil(math.sqrt(x)+1)))
  for value in lessValues:
    if x % value == 0:
      isPrime = False
      break
  return isPrime

def factors(x):
  factorList = []
  lowFactors = range(1, int(math.ceil(math.sqrt(x)+1)))
  for factor in lowFactors:
    if x % factor == 0:
      factorList.append(factor)
      factorList.append(x/factor)
  factorList.sort()
  return factorList

factorLists = factors(600851475143)
primeFactors = filter(primeTest, factorLists)
print max(primeFactors)
