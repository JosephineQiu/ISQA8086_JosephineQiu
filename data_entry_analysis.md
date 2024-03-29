# Data Entry Analysis
## Issues of the Datasets
* There are missing data from the datasets. In file 1, we can tell that there are some missing data fields that might have an influence on the data analysis.

* The structures of the datasets are inconsistent. The attributes on File 1 are Date, z, Tem, density and Colony Diame Species. File 2 has attributes including Date, Depth, Cuni, Cuni ColonySize, Chippo #/L and Chippo ColonySize. File 3 has attributes including Date, Dept, Cuni #/L, Cuni ColonySize, Chippo #/L, Chippo ColonySize, Chla and Temp. The differences of structures among datasets will increase the difficulty in joining the datasets together. 

* The datasets lack explanation of attributes. Not given the explanation of attributes, the data analysts won't be able to gain a good data understanding of the datasets. Also, we have no idea what attribute z in file 1 refers to.

* Metadata cannot be found for the datasets. This will increase the difficulty to understand the data.

* Important attributes are missing. Since plankton change their distributions from day to night, it is significant to record the time when the data is collected. 

* Some attributes lack appropriate units labeling. File 1 doesn't have the unit specified for both the density and the Temp attributes.File 2 lacks unit labeling for both Depth and Chippo ColonySize. File 3 doesn't have units labeled for Depth and Cuni ColonySize. 

## New System Suggestion
Based on the issues identified above, I suggest using the following system to generate the datasets:

| ID | Name of Species | Date | Depth | Time | Density | Temperature | Size |
|----|-----------------|------|-------|------|---------|-------------|------|
|    |                 |      |       |      |         |             |      |

* All attributes should be given clear definitions.
**ID**: A unique identifying number for each collection of data.     
**Name of Species**: The name of the species that the data is collected for.   
**Date**: The date when the corresponding data is collected, formatted MM/DD/YYYY.  
**Depth**: The depth of the water collected, described in the unit of meter.  
**Time**: The time when the corresponding data is collected, formatted 00:00PM/AM.  
**Density**: The population of species in each liter of water collected, formatted number/L.  
**Temperature**: The temperature of water collected, described in the unit of Fahrenheit.  
**Size**: The diameter of the colony of species collected, measured in millimeters.  

* All data collected should follow the uniform structures.

* Metadata should be developed for the datasets.

* With some missing data, we should choose appropriate techniques for data cleaning and resembling. When collecting new data, the situation of missing data should be avoided as much as possible. 

## Proofreader Signoff
**Proofreader**: _Menglin Qiu_

