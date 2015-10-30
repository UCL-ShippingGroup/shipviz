\subsection{Tools}

We are using two tools for the data analysis, QGIS and CartoDB. This combination constitutes  a user-friendly solution for data ingestion, data manipulation and data analysis.


QGIS is a freely available Open Source desktop application for manipulation and visualisation of geo-spatial data. It integrates well with PostGIS databases (extension to PostgreSQL), providing a large catalogue of GIS functionality complemented with several optional extensions.
CartoDB is an Open Source web mapping framework that provides geo-temporal data storage on a cloud database as well as an API for data manipulation and different styling options to display these data on a web browser.

In our case, QGIS proved very useful for transforming the MARPOL, Californian Waters and coastline data into a Shapefile compatible with CartoDB ingestion tools with points in decimal format, filtering out land areas.
In the early stages of the technical assessment of our work, QGIS provided us with an initial quick view of the content of the existing AIS dataset. However, QGIS lacks a good temporal extension that handles large datasets\footnote{Although some efforts are being done in TimeManager, a plugin for QGIS (\href{https://plugins.qgis.org/plugins/timemanager/}{https://plugins.qgis.org/plugins/timemanager/}), this is insufficient for large datasets.} as well as an SQL extension for direct manipulation of the dataset, so we only used it as an auxiliary tool.

Several other tools were considered to improve the data-analysis work. Amongst them are Mapbox, OpenLayers, ESRI and CartoDB. Out of all these, CartoDB proved to be the most adequate. We considered several key factors:

\begin{itemize}
\item Data storage: The AIS data is a very large dataset (add dataset size here) with data security constraints imposed by the data owners. Therefore, the data must be hosted locally with restricted access, and the data queries need to be efficient for large amounts of information.

\item Utilities for data ingestion and sharing: The AIS data is constantly being refined and filtered by our research group. The chosen tool should ideally allow easy ingestion of  data in CSV or SQL format, as well as export tools for data backup or data sharing with colleagues

\item Data visualisation capability: To make the tool easily adoptable to all researchers in our group, we require an intuitive graphical user interface with data filtering controls, different choices for AIS visualisation such as density and cluster maps and ideally the possibility to plot temporal data navigable with a time slider.

\item Integration with other visualisation tools: Ideally, the chosen tool could be extended beyond data mapping and allow other types of data plotting options such as histograms or scatterplots for speed profiling, etc.

\item Reliability and robustness: 

\end{itemize}

Several libraries for web mapping, e.g.\ OpenLayers, would have required a substantial amount of development work to adopt to adapt to our key requirements, hence we discarded those.

CartoDB, however, provides an out-of-the-box solution that complies with our key requirements without much need of custom development or user training.

The freely available online CartoDB alternative was discarded in favour of manually installing a full CartoDB stack locally at our university\footnote{We followed instructions found in \href{http://cartodb.readthedocs.org/en/latest/install.html}{http://cartodb.readthedocs.org/en/latest/install.html}}. This way, we could adapt the default CartoDB configuration to store larger amounts of data, allow longer ingestion times and give access to the data only to the project's researchers, whilst having a ready-to-use web mapping interface with an SQL query editor and several options for data visualisation and styling.
