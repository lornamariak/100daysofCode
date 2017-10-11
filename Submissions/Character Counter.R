mydata <- file("Obama_Speech.txt", "r", blocking = FALSE)
letter.frequency<- function(mydata){
  file<-paste(readLines(mydata),collapse = '')
  chars<-strsplit(file,NULL)[[1]]
  summary(factor(chars))
}
print(letter.frequency(mydata))