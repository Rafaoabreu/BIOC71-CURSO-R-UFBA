#### 104.1 VRios ####

data("rivers")

prop.mm= length(rivers[rivers< mean(rivers)])/length(rivers)

quantil.75 = quantile(rivers, probs = .75)
quantile(rivers)

medias = c(mean(rivers), mean(rivers, trim = .25), median(rivers))
