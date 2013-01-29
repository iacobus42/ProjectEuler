import math

def isPrime(x):
    sqrtX = math.sqrt(x)
    prime = True
    testValue = 2
    while (testValue <= sqrtX and prime == True):
        if (x % testValue) == 0:
            prime = False
        else:
            if testValue == 2:
                testValue = testValue + 1
            else:
                testValue = testValue + 2
    return prime

def getNthPrime(n):
    counter = 1
    testValue = 1

    while counter < n:
        testValue = testValue + 2
        currentPrime = isPrime(testValue)
        if currentPrime:
            counter = counter + 1
    return testValue

print getNthPrime(10001)