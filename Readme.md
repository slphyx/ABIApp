# ABIApp: Applying Taxonomic Boundaries for Species Identification of Helminths 

![image](https://img.shields.io/badge/Code-R-blue)
![image](https://img.shields.io/badge/Package-R-blue)
![image](https://img.shields.io/badge/ABI-V%200.4-blue)

## Overview

The **ABIApp** package provides tools for species delimitation of helminths using genetic distance and visualization methods.

---

## Prerequisites

Tested with:
- R version: 4.3.2
- ape version: 5.8-1
- BiocManager version : 1.30.25
- bsplus version: 0.1.4
- ggtree version: 3.10.1
- htmltools version: 0.5.8.1
- markdown version: 1.13
- seqinr version: 4.2-36
- shiny version: 1.10.0
- shinydashboard version: 0.7.2
- shinyjs version: 2.1.0
- shinythemes version: 1.2.0
- shinyWidgets version: 0.8.7
- stringrversion: 1.5.1

### Required Package: **ggtree**

The ABIApp package depends on the `ggtree` package for generating phylogenetic trees. You must install `ggtree` before installing the ABI package.

Install `ggtree` from Bioconductor:

```r
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("ggtree")
```

## Install Package
Install the ABIApp package directly from GitHub using the devtools package.

```{r}
install.packages("devtools")
devtools::install_github("slphyx/ABIApp")
```

or

```{r}
install.packages("devtools")
library(devtools)
install_github("slphyx/ABIApp")
```


## How to Use
### Launch the Shiny App
The ABIApp package includes an interactive Shiny web application for helminth analysis. You can launch it using the following command:
```{r}
ABI::run_ABIApp()
```

or

```{r}
library(ABIApp)
run_ABIApp()
```
In the web app, it has "Quick Guidelines" for using the app.
This opens an interactive interface where you can upload data, perform analyses, and visualize results.

## Use function 

The ABIApp package includes core R functions for helminth species delimitation. Below are some examples:
```{r}
# Basic usage
library(ABIApp)

## Specify distance only
ABI_Helminth(0.06)

## Add specify group and marker
ABI_Helminth(distance = 0.5,group = "CE",marker = "ITS2")

```
#### Explanation:
- `distance`: Genetic distance for species comparison (range: 0.000–0.909).  
- `group`: Taxonomic group of helminths, e.g., "NAS" for nematodes (Ascaridida and Spirurida).  
- `marker`: Genetic marker for analysis, e.g., "18S rRNA."  

---

### Use function With Fasta file

You can use a FASTA file to analyze genetic distances between taxa. Here are some usage examples:
```{r}
# Fastafile Example
Fastafile <- system.file("ABI/www/Ex/Example_data.fasta", package = "ABIApp")

# Select with numbers
ABI_Helminth(Fastafile=Fastafile,
             group = "NT",marker = "18S rRNA",
             fastaSelect1 = 1, fastaSelect2 = 2
)

# Select with number and text (mixed )
ABI_Helminth(Fastafile=Fastafile,
             group="NT",marker="18S rRNA",
             fastaSelect1 = "COI_T_14M.1", fastaSelect2 = 2
)

# Select with text labels
ABI_Helminth(Fastafile=Fastafile,
             group="NT",marker="18S rRNA",
             fastaSelect1 = "COI_T_14M.1", fastaSelect2 = "KT449823_Trichuris_suis_COI"
)
```

#### Explanation:
- `Fastafile`: Path to the FASTA file containing genetic sequences.  
- `fastaSelect1`, `fastaSelect2`: Identify taxa for comparison by index or label.
- `group`: Taxonomic group of helminths, e.g., "NAS" for nematodes (Ascaridida and Spirurida).  
- `marker`: Genetic marker for analysis, e.g., "18S rRNA."   

---

## Supported Helminth Groups

You can analyze the following helminth groups using the ABI package:

- **NAS**: Nematode (Ascaridida and Spirurida)  
- **NS**: Nematode (Strongylida)  
- **NT**: Nematode (Trichocephalida)  
- **TR**: Trematode (Plagiorchiida)  
- **TRD**: Trematode (Diplostomida)  
- **CE**: Cestode
  
---
## Supported Genetic Markers

The ABI package supports the following genetic markers for helminth species delimitation:  

- "18S rRNA"  
- "28S rRNA"  
- "ITS1"  
- "ITS2"  
- "COI"  
- "COII"  
- "cytB"  
- "NAD1"  
- "12S rRNA"  
- "16S rRNA"  

---

