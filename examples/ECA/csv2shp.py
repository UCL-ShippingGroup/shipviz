import  shapefile
from LatLon import *
import pandas
import numpy

#Import CVS file and load list of lat,lon points for each US ECA area
filename = "dec_US-ECA-lonlat.csv"
ecas = pandas.read_csv(filename)

#For each ECA area, create a polygon in the shapefile
for group in ecas.groupby('Area'):
    w = shapefile.Writer(shapefile.POLYGON)
    area = group[0]
    data = group[1]
    latitudes = data['Latitude']
    longitudes = data['Longitude']
    w.poly(parts = [numpy.column_stack((longitudes, latitudes)).tolist()])
    w.field('ECA','C','150')
    w.record(ECA = area)
    w.save(area)
    #Shapefiles need a prj file for CartoDB to import properly
    prj = open("%s.prj" % area, "w")
    epsg = 'GEOGCS["WGS 84",DATUM["WGS_1984",SPHEROID["WGS 84",6378137,298.257223563]],PRIMEM["Greenwich",0],UNIT["degree",0.0174532925199433]]'
    prj.write(epsg)
    prj.close()
