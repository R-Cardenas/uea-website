---
title: "Variant QC Pipeline"
authors: ""
date: "2020-09-07T00:00:00Z"
doi: ""

# Schedule page publish date (NOT publication's date).
publishDate: "2017-01-01T00:00:00Z"

# Publication type.
# Legend: 0 = Uncategorized; 1 = Conference paper; 2 = Journal article;
# 3 = Preprint / Working Paper; 4 = Report; 5 = Book; 6 = Book section;
# 7 = Thesis; 8 = Patent
publication_types: ["3"]

# Publication name and optional abbreviated publication name.
publication: ""
publication_short: ""

abstract: 

# Summary. An optional shortened abstract.
summary: We have developed quality control (QC) pipelines that automate a number of tools to ensure sample fidelity. This pipeline processes samples from RNA-seq and DNA-seq (exome and WGS) followed by mapping. 

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

<br /> 

![](fastqc.jpg)


<br /> 

Quality control (QC) is an essential step in any NGS experiment as there a number of common sequencing artefacts such as read errors, primer/adapter contamination, PCR/optical read duplication. Failure to remove such artefacts can negatively impact upon downstream analyses and produce erroneous conclusions. The majority of these downstream analyses do not perform filtering steps or provide tools for QC, therefore these sequencing artefacts should be filtered out to prevent inaccurate results.

<br /> 

![figure 1 - QC pipeline flowchart ](QC_pipeline.png)

*Figure 1 - QC pipeline flowchart.*

<br /> 


We have developed pipelines that include the all the essential QC tools for both RNA and DNA (variant exome and WGS) sequencing experiments - summarised in figure 1. Irrespective of sample type, samples are first trimmed using TrimGalore, analysed by FastQC and aligned (cgpMAP and HISAT2 for DNA and RNA, respectively). The picard toolkit suite is also used to remove PCR and optical duplicates, give read insert sizes and alignment statistics. 

<br /> 

Additional tools have been included to estimate the levels of contamination (verifyBAMID), relatedness scores and ancestry estimation in DNA-seq samples (Somalier) - shown in figure 2. These analsyes allow the identification of samples that may have been mislabelled, contaminated or degraded thus preventing errouneous result interepretation. 

<br /> 

Once all analyses have been performed, multiQC is used to create QC plots reporting results in an easy and digestible format. An example of a multiQC report is [here](https://multiqc.info/examples/wgs/multiqc_report.html#qualimap). If samples pass QC, they will progress onto their chosen downstream analysis - such as the germline or somatic variant discovery pipelines.



