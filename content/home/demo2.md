+++
# A Demo section created with the Blank widget.
# Any elements can be added in the body: https://sourcethemes.com/academic/docs/writing-markdown-latex/
# Add more sections by duplicating this file and customizing to your requirements.

widget = "blank"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 3  # Order that this section will appear.

title = "Pipelines in development"
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
  gradient_start = "#C8C4C2"
  gradient_end = "#C8C4C2"
  #gradient_end = "DarkGrey"

  # Background image.
  #image = "background.jpg"  # Name of image in `static/media/`.
  #image_darken = 0.5  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.
  #image_size = "cover"  #  Options are `cover` (default), `contain`, or `actual` size.
  #image_position = "center"  # Options include `left`, `center` (default), or `right`.
  #image_parallax = false  # Use a fun parallax-like fixed background effect? true/fals

  # Text color (true=light or false=dark)
  text_color_light = false

[design.spacing]
  # Customize the section spacing. Order is top, right, bottom, left.
  padding = ["20px", "0", "20px", "0"]

[advanced]
 # Custom CSS.
 css_style = ""

 # CSS class.
 css_class = ""


+++

<h4>RNA-seq</h4>

We are currently developing our an RNA-seq pipeline that utilises the HISAT2 aligner and StringTie for differential expression analysis. Unsupervised hierachial clustering, gene expression heatmaps and gene-ontology analyses are also being intergrated as part of this pipeline. Like our other pipelines, a HTML report summarising results will be generated creating interactive tables and plots. For more information please contact us directly using the [contact](#contact) tab.


<h4>SEPATH</h4>

SEPATH provides a benchmarked and convenient approach to detect pathogens in tissue sequence data helping to determine the relationship between metagenomics and disease. For more information visit the SEPATH github [here](https://github.com/UEA-Cancer-Genetics-Lab/sepath_tool_UEA) or contact us directly using the [contact](#contact) tab.



