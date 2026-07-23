# Host-Pathogen-RNAseq-Pipeline

![GitHub](https://img.shields.io/badge/Bioinformatics-DualRNAseq-green)
![STAR](https://img.shields.io/badge/STAR-2.7.11b-blue)
![Kallisto](https://img.shields.io/badge/Kallisto-Latest-orange)
![R](https://img.shields.io/badge/R-4.x-blue)
![License](https://img.shields.io/badge/License-MIT-yellow)

## Overview

This repository contains a reproducible host–pathogen dual RNA-seq analysis workflow from raw FASTQ files to downstream functional analysis.

The pipeline is designed for transcriptomic studies involving plant–pathogen interactions and can easily be adapted for other host–microbe systems.

---

## Workflow

```
Raw FASTQ
    │
    ▼
Quality Control
    │
    ▼
STAR Alignment (Host)
    │
    ├── Host mapped reads
    │        │
    │        ▼
    │   Host Gene Expression
    │
    ▼
Host Unmapped Reads
    │
    ▼
STAR / Kallisto (Pathogen)
    │
    ▼
Pathogen Gene Expression
    │
    ▼
Differential Expression Analysis
    │
    ▼
GO Enrichment
    │
    ▼
KEGG Pathway Analysis
    │
    ▼
Biological Interpretation
```

---

## Repository Structure

```
01_QC/
02_Reference/
03_STAR/
04_Kallisto/
05_CountMatrix/
06_DESeq2/
07_DEGs/
08_GO/
09_KEGG/
10_GSEA/
11_Visualization/

docs/
figures/
references/
results/
scripts/
workflow/
```

---

## Software

- FastQC
- STAR
- Kallisto
- R
- DESeq2
- clusterProfiler
- enrichplot
- ggplot2

---

## Project Status

- Quality Control ✅
- Host Alignment ✅
- Pathogen Alignment ✅
- Host Quantification ✅
- Pathogen Quantification ✅
- Count Matrix ⏳
- DEGs ⏳
- GO Enrichment ⏳
- KEGG Analysis ⏳
- Visualization ⏳

---

## Citation

If you use this workflow, please cite the original software used in the analysis.

---

## Author

**Yeasin Arafat**

Department of Agriculture

NOAKHALI SCIENCE AND TACHNOLOGY UNIVERSITY
