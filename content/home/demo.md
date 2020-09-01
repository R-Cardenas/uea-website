+++
# A Demo section created with the Blank widget.
# Any elements can be added in the body: https://sourcethemes.com/academic/docs/writing-markdown-latex/
# Add more sections by duplicating this file and customizing to your requirements.

widget = "blank"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 1  # Order that this section will appear.

title = "UEA MED Genomic Pipelines"
subtitle = ""

[design]
  # Choose how many columns the section has. Valid values: 1 or 2.
  columns = "1"

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.

  # Background color.
  color = ""
  
  # Background gradient. 
  gradient_start = "#290430"
  gradient_end = "#040430"
  #gradient_end = "DarkGrey"
  
  # Background image.
  #image = "background.jpg"  # Name of image in `static/media/`.
  #image_darken = 0.5  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.
  #image_size = "cover"  #  Options are `cover` (default), `contain`, or `actual` size.
  #image_position = "center"  # Options include `left`, `center` (default), or `right`.
  #image_parallax = false  # Use a fun parallax-like fixed background effect? true/fals
  
  # Text color (true=light or false=dark)
  text_color_light = true

[design.spacing]
  # Customize the section spacing. Order is top, right, bottom, left.
  padding = ["20px", "0", "20px", "0"]

[advanced]
 # Custom CSS. 
 css_style = ""
 
 # CSS class.
 css_class = ""
 

+++


At UEA MED genomics we specialise in the analysis of high-throughput genomics and sequencing data. Our facility is based at the Bob Champion Research and Education Building (BCRE) within the Norwich Research Park. MED genomics provides a new service funded by UEA MED to facilitate analysis of complex sequencing datasets to aid ongoing and high impact research.

We have developed pipelines that automate the essential steps for processing sequencing samples and that produce a user-friendly report to summarise results. All samples undergo a rigorous quality control (QC) pipeline that including FastQC and Picard tools prior to the main analysis. For DNA-sequencing, we accept both exome and whole-genome samples for the analysis of germline or somatic variants. These pipelines incorporate other well-established pipelines developed at the Sanger Institute (cgpMAP, cgpWXS and cgpWGS) in addition to pipelines we have developed in-house, utilising other popular variant analysis tools (e.g. GATK and Freebayes).

Each pipeline produces a HTML report that includes interactive tables and graphs to summarise results. Further explanation of our pipelines can be found in our pipelines section and examples of our previous projects and reports in the projects section. In addition to our current pipelines, we also offer bespoke analyses upon request. For further information of this service please use the contact tab to email us directly. 





