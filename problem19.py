import calendar

years = range(1901, 2001)
months = range(1, 13)
numberOfFirstSundays = 0
for year in years:
    for month in months:
        if calendar.weekday(year, month, 1) == 6:
            numberOfFirstSundays = numberOfFirstSundays + 1
print numberOfFirstSundays
