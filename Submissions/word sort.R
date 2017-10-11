x<- readline(prompt = "enter your word: ")
sort.alphabetically <- function(x)
{
  paste(sort(unlist(strsplit(x, ""))),collapse = "")
}
print (sort.alphabetically(x))