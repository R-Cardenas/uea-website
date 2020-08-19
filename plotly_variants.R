
## Plotly using variables from Tumoroid VICC post 010720
library(plotly)

data2_snvs_indels_all_filtered <- rbind(snvs_filtered,data2_indels) %>%
  dplyr::mutate(PolyPhen = str_replace_all(PolyPhen, pattern = "-", replacement = "unknown")) %>%
  dplyr::mutate(Consequence = str_replace_all(Consequence, pattern = "NMD_", replacement = "")) %>%
  dplyr::mutate(Consequence = str_replace_all(Consequence, pattern = "_variant", replacement = " ")) %>%
  dplyr::mutate(Consequence = str_replace_all(Consequence, pattern = "transcript", replacement = "transcript_variant"))


levels <- data2_snvs_indels_all_filtered %>%
  select(Consequence) %>%
  distinct() %>%
  list()


plotly_snvs_indels <- data2_snvs_indels_all_filtered %>%
  select(Consequence, PolyPhen) %>%
  group_by(Consequence, PolyPhen) %>%
  tally() %>%
  arrange(desc(n))


fig <- plot_ly(plotly_snvs_indels, x = ~reorder(Consequence,-n),
               y = ~n,
               color = ~PolyPhen,
               colors = 'Reds',
               type = 'bar',
               text = 'test') %>%
  layout(
    yaxis = list(title = 'No. of Variants'),
    barmode = 'stack',
    xaxis = list(title = ''))


fig2 <- fig %>%
  add_annotations( text="PolyPhen Prediction", xref="paper", yref="paper",
                   x=1.02, xanchor="left",
                   y=0.8, yanchor="bottom",    # Same y as legend below
                   legendtitle=TRUE, showarrow=FALSE ) %>%
  layout( legend=list(y=0.8, yanchor="top"),
          xaxis = list(tickangle = 45),
          margin = list(b = 160))
fig2
