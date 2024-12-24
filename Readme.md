# ABI: A Tool for Helminth Species Delimitation

![image](https://img.shields.io/badge/Code-R-blue)
![image](https://img.shields.io/badge/Package-R-blue)
![image](https://img.shields.io/badge/ABI-V%200.4-blue)

## Overview

The **ABI** package provides tools for species delimitation of helminths using genetic distance and visualization methods. It supports analysis of genetic markers such as "18S rRNA," "ITS2," and more. The package also includes a Shiny web app for interactive use.

---

## Prerequisites

### Required Package: **ggtree**

The ABI package depends on the `ggtree` package for generating phylogenetic trees. You must install `ggtree` before installing the ABI package.

Install `ggtree` from Bioconductor:

```r
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("ggtree")
```

## Install Package
Install the ABI package directly from GitHub using the devtools package.

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
The ABI package includes an interactive Shiny web application for helminth analysis. You can launch it using the following command:
```{r}
ABI::run_app_ABI()
```

or

```{r}
library(ABI)
run_app_ABI()
```
In the web app, it has "Quick Guidelines" for using the app.
This opens an interactive interface where you can upload data, perform analyses, and visualize results.

## Use function 

The ABI package includes core R functions for helminth species delimitation. Below are some examples:
```{r}
# Basic usage
ABI_Helminth()

# Specify distance only
ABI_Helminth(0.06)

# Add specify group and marker
ABI_Helminth(0.02,"NS","18S rRNA")
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
# Select with numbers
ABI_Helminth(Fastafile="dir/fastaFile.fasta","NT","18S rRNA"
fastaSelect1 = 1, fastaSelect2 = 2
)

# Select with number and text (mixed )
ABI_Helminth(Fastafile="dir/fastaFile.fasta","NT","18S rRNA"
fastaSelect1 = "Label 1", fastaSelect2 = 2
)

# Select with text labels
ABI_Helminth(Fastafile="dir/fastaFile.fasta","NT","18S rRNA"
fastaSelect1 = "Label 1", fastaSelect2 = "Label 2"
)
```

#### Explanation:
- `Fastafile`: Path to the FASTA file containing genetic sequences.  
- `fastaSelect1`, `fastaSelect2`: Identify taxa for comparison by index or label.  

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

