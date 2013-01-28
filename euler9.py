# find a^2+b^2=c^2 where a+b+c = 1000, return abc

import math

aValues = range(1, 1001)

for aValue in aValues:
  for bValue in range(0, 1001-aValue):
    cValue = math.sqrt(aValue**2+bValue**2)
    if cValue == int(cValue):
      if aValue + bValue + cValue == 1000:
         print aValue*bValue*cValue
         print aValue, bValue, cValue
         break

