---
title: "Germline variant caller"
authors: ''
date: "2020-09-07T00:00:00Z"
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
summary: Our germline variant calling pipeline has been created in-house utilising Freebayes and the GATK rare variant discover workflow. We use this in combination with Ensembl's variant effect predictor (VEP) and gnomAD to filter for rare and predicted deleterious variants.

tags:
- pipelines
featured: false

links:
url_pdf: ''
url_code: ''
url_dataset: ''
url_poster: ''
url_project: ''
url_slides: ''
url_source: ''
url_video: ''

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

<img src="brca.png" alt="drawing" style="width:500px;"/>

*Figure 1 - An example of inheritance of the genetically dominant BRCA mutation.*

<br /> 

A germline mutation is characterised by a change in bases that are occur within the gamete cells, thus resulting in these mutations to be present in every somatic cell of an individual. Given that germline mutagenesis is a fundamental biological process driving heritable genetic variation, identifying germline variant which attribute to a particular disease can be a challenging task. We have developed a germline variant discovery pipeline that utilises two independent variant callers; GATK Haplotype caller and Freebayes (figure 2). This pipeline accepts both exome and whole genome sequencing data, in addition to an optional pedigree (PED) file to allow overlap between disease affected/unaffected family members.

<br /> 

![Figure 2 - flowchart depicting UEA MED genomics germline. pipeline](flowchart.png)

*Figure 2 - A flowchart depicting UEA MED genomics QC and germline pipeline.*

<br /> 

The GATK module includes all the recommended tools described from the [Germline short variant discovery (SNPs + Indels workflow)](https://gatk.broadinstitute.org/hc/en-us/articles/360035535932-Germline-short-variant-discovery-SNPs-Indels-). This module automates 11 processes including recalibration against known common variants, variant calling (HaplotypeCaller), convolutional neural network variant scoring and filtering  to produce a list of high quality variants. In contrast, our Freebayes module utilises a bayesian  approach which then filters variants based on quality scores and depth (https://github.com/ekg/freebayes).


<br /> 

{{< load-plotly >}}
{{< plotly json="plotly2.json" height="600px" >}}
*Figure 2 - an exmaple of SIFT prediction of deleteriousness for variants. Part of the germline variant pipeline.*


<br /> 

Next, variants called by GATK haplotype caller and Freebayes are overlapped and annotated using variant effect predictor (VEP). Common variants are filtered using the GnomAD database for sequencing data using user define cut off values; SIFT and PolyPhen are used to predict the deleteriousness of variant (figure 2). A user-friendly html report is created providing interactive tables and plots allowing users to interrogate the new rare-variant results - an example of this report can be found [here](https://uea-med-pipelines.netlify.app/project/cholesteatoma) in the Cholesteatoma project we have recently processed (as of Sept 2020).

<br /> 

<br /> 


