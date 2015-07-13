#Change this to take list of latitudes and longitudes as argument
from LatLon import *

#Take latitudes and longituds from PDF, e.g.:
latitudes = ["32 32 10 N", "32 32 04 N", "32 31 39 N", "32 33 13 N", "32 34 21 N", "32 35 23 N", "32 37 38 N", "31 07 59 N", "30 33 25 N"]
longitudes = ["117 06 11 W", "117 07 29 W", "117 14 20 W", "117 15 50 W", "117 22 01 W", "117 27 53 W", "117 49 34 W", "118 36 21 W", "121 47 29 W"]

#Check lat and lon have same length.

#Use string2latlon to transform each pair
for i in range(len(latitudes)):
    print "Degrees = (" , latitudes[i] ,  ", " + longitudes[i] + ")"
    point = string2latlon(latitudes[i], longitudes[i],  'd% %m% %S% %H')
    print "Decimal = " + str(point.to_string('D%'))

