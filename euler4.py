def isPal(x):
  isPal = True
  x = str(x)
  for index in range(len(x)):
    if x[index] != x[len(x)-1-index]:
      isPal = False
      break
  return isPal

def products(x, y):
  product = []
  for first in range(x, y):
    for outer in range(first, y):
      product.append(first*outer)
  product.sort()
  return product

product = products(100, 1000)
pals = filter(isPal, product)
print max(pals)
