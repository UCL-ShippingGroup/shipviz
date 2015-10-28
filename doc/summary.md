QGIS is a freely available Open Source desktop application for manipulation and visualization of geo-spatial data. It integrates well with PostGIS databases, providing a large catalogue of GIS functionality complemented with several optional extensions.

In our case, it proved to be very useful to elaborate the ECAs data from an initial list of points in separate PDF sources in degree format into a Shapefile compatible with CartoDB ingestion tools with points in decimal format, filtering out land areas.

In the early stages of the technical assessment in this project, QGIS provided us with an initial quick view of the content of the existing AIS database to better assess on what technologies the project could move forward to. However, QGIS lacks a good temporal extension that handles large datasets (although some efforts are being done in TimeManager https://plugins.qgis.org/plugins/timemanager/, however insuficient for large datasets), as well as a SQL extension for direct manipulation of the dataset in the fashion these exist in other tools like CartoDB, so we only used it as an auxiliar tool.

Several other tools were considered to improve the data analysis work in this project. Amongst them are Mapbox, OpenLayers, ESRI and CartoDB. Out of all these, CartoDB proved to be the most adequate. We considered several key factors:

- Data storage: The AIS data used by the research team was a very large dataset (add dataset size here) with data security contraints imposed by the data owners. Therefore, the data must be hosted locally with restricted access, and the data queries need to be efficient for large amounts of information. 

- Utils for data ingestion and sharing: The AIS data is in CSV format and is constantly being refined and filtered by the research team. The chosen tool should ideally allow easy ingestion of CSV data as well as export tools for data backup or data sharing with colleagues.
 
- Ease of adoption by the research team: The team had already been using SQL to perform data analysis, but it proved difficult to find powerful visualization tools that would allow a one-stop user friendly solution for data ingestion, manipulation and analysis. 

- Data visualization capability: For the data analysis work, it was mandatory to provide the team with an intuitive graphical user interface with data filtering controls, different choices for AIS visualization such as density and cluster maps and ideally the possiblity to plot temporal data navigable with a time slider.

- Integration with other visualization tools: Ideally, the chosen tool could be extended beyond data mapping and allow other types of data plotting options such as histograms or scatterplots for speed profiling, etc.

- Project schedule: The collaboration between UCL's Research Development Group and the Energy Institute for this project had a predefined timeline that didn't allow developing a tool from scratch that is reliable and robust enough to be productive and sustainable. Several of the libraries for web mapping considered initially, like OpenLayers, were discared due to this factor.

CartoDB is an Open Source web mapping framework that provides geo-temporal data storage on a cloud database as well as an API for data manipulation and different styling options to display these data on a web browser.

The freely available online CartoDB alternative was discarded in favour of installing manually a full CartoDB stack locally at University College London, following instructions found in http://cartodb.readthedocs.org/en/latest/install.html. This way, we could adapt the default CartoDB configuration to store larger amounts of data, allow longer ingestion times and give access to the data only to the project's researchers, whilest we had a ready-to-use web mapping interface with a SQL query editor and several options for data visualization and styling. 

CartoDB provided us with an out-of-the-box solution that complied with most of the project requirements without much need of custom development or user training. 




