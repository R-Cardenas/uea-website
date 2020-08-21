---
title: "Somatic variant caller"
authors:
- admin
date: "2019-04-07T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2017-01-01T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["0"]

# Publication name and optional abbreviated publication name.
publication: ""
publication_short: ""

abstract: 

# Summary. An optional shortened abstract.
summary: Following the sample QC, our somatic pipeline can be performed on tumor-normal matched samples. Samples are analysed using Sanger's variant pipelines for exome (cgpWXS) or whole-genome sequencing (cgpWGS) in addition our in-house pipeline that utlises Mutect2 and the GATK workflow tools.

tags:
- pipelines
featured: false

links:
- name: github
  url: https://github.com/R-Cardenas/pipelines_clean
url_pdf: ''
url_code: '#'
url_dataset: '#'
url_poster: '#'
url_project: ''
url_slides: ''
url_source: '#'
url_video: '#'

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/s9CC2SKySJM)'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `internal-project` references `content/project/internal-project/index.md`.
#   Otherwise, set `projects: []`.
projects:
- internal-project

# Slides (optional).
#   Associate this publication with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides: "example"` references `content/slides/example/index.md`.
#   Otherwise, set `slides: ""`.
slides: example
---



![Figure - mutational signature analysis from Tumoroid cancer project](signature.png)

<br /> 

After samples have passed QC and have been mapped, tumor-normal matched samples can be analysed using our somatic variant pipeline - both exome and whole genome sequencing (WGS) is supported with these pipelines.. This pipeline is composed of 3 main parts; the first 2 parts analyses files using 2 independent variant callers from Sanger and GATK.  

<br /> 

The Sanger pipelines cgpWXS and cgpWGS were designed for exome and WGS, respectively (https://github.com/cancerit). Both Sanger pipelines utilise CAVeMAN and Pindel to call single base substitutions (SBSs) and insertions-deletions (indels) which are annotated by VAGrENT. CgpWGS also includes BRASS and ascatNgs for breakpoint and copy number analysis. Both tools identify high quality variants that are used downstream for further analysis.

<br /> 
 
The GATK pipeline was developed in-house and include all the reccomennded tools described in the the  [mutect2 GATK workflow](https://gatk.broadinstitute.org/hc/en-us/articles/360035889791--How-to-Call-somatic-mutations-using-GATK4-Mutect2-Deprecated-). This pipeline automates 10 processes including recalibration against known common variants, variant calling (mutect2), contamination calculation and filtering variants to produce a list of high quality variants.

<br /> 

The final part of our pipeline creates an overlap between the variants found in both Sanger and GATK variant callers. A html report is created from the results that includes annotated variants significantly different between normal and tumor samples, variant class summary (E.g. nosense, stop codon, etc) across samples, cancer drug prediction and variant allele frequencies - an example of this is shown in the colorectal cancer tumoroid project [here](put inthe hhtps when ready) 

