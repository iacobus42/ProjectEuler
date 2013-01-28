# smallest int divisible by 1... 20 with mod == 0

# if divisible by 20, then by 2, 4, 5, 10
# if divisible by 19, then by 19
# if divisible by 18, then by 2, 3, 6, 9
# if 17, then 17
# if 16, then 16, then 2, 4, 8
# if 15, then 3, 5
# if 14, then 2,7
# if 13, then 13
# if 12, then 2,3,4,6
# if 11, then 11
# if 10, then 2, 5

def evenDivis(x):
  checks = [20,19,18,17,16,15,14,13,12,11]
  isEven = True 
  for div in checks:
    if x % div != 0:
      isEven = False
      break
  return isEven

answerFound = False
number = 0
while answerFound == False:
  number = number + 1
  answerFound = evenDivis(number)

print number
