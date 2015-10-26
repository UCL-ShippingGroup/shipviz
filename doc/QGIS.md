QGIS is a freely available Open Source desktop application for manipulation and visualization of geo-spatial data. It integrates well with PostGIS databases, providing a large catalogue of GIS functionality complemented with several optional extensions.

In our case, it proved to be very useful to elaborate the ECAs data from an initial list of points in separate PDF sources in degree format into a Shapefile compatible with CartoDB ingestion tools with points in decimal format, filtering out land areas.

In the early stages of the technical assessment in this project, QGIS provided us with an initial quick view of the content of the existing AIS database to better assess on what technologies the project could move forward to. However, QGIS lacks a good temporal extension that handles large datasets, as well as a SQL extension for direct manipulation of the database in the fashion these exist in CartoDB, so we only used it as an auxiliar tool.



