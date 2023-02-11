rawData<-iris



Selection = function(d , cols){
  return(d[,cols])
}
data <- Selection (
rawData,
c("Species","Sepal.Length","Sepal.Width")
)
colnames( data )=c('species','length','width')

library(dplyr)
library(ggplot2)
data%>%
  filter(length>5)%>%
  ggplot( aes(x=width , y=length , color=species)) + geom_point() + ggtitle('Sepal length and width coloured by species')
