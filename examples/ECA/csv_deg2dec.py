import pandas
from LatLon import *

'''
Load CSV file with degree coordinates (e.g. "32 10 39 N"), convert to decimal
(e.g.: 32.1775) and save.
'''

# Read path to input CSV file
#TODO: Take from user input instead
filename = 'US-ECA-lonlat.csv'

# Load CSV content and parse Latitude and Longitude columns, then save to output CSV file
# with corrected coordinates.
ecas = pandas.read_csv(filename)
ecas.Latitude = ecas.Latitude.apply(lambda d: string2geocoord(d.rstrip(), Latitude, \
        'd% %m% %S% %H'))
ecas.Longitude = ecas.Longitude.apply(lambda d: string2geocoord(d.rstrip(), Longitude, \
        'd% %m% %S% %H'))
ecas.to_csv("dec_"+filename)


