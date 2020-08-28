

data1 <- NOVO_snvs_and_indels %>%
  distinct() %>%
  select(Consequence,SIFT) %>%
  group_by(Consequence,SIFT) %>%
  tally() %>%
  mutate(n=round((n*0.55*1.26),digits = 0)) %>%
  filter(n>10) %>%
  arrange(desc(n)) %>%
  ggplot(data =., mapping = aes(fill=SIFT,x=reorder(Consequence,-n), y=n)) +
  geom_bar(position="stack", stat="identity") +
  theme(axis.text.x=element_text(angle = 45, hjust = 1)) + theme(legend.position="top") +
  xlab(NULL) + ylab("Number of Variants") + scale_fill_d3()
data1


plotly::ggplotly(data1) %>%
  plotly::layout(legend = list(orientation = "h", x = 0,5, y =1.2))

plotly::plotly_json()
View()
