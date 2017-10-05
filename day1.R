x <- readline(prompt="Enter x: ")
x <- as.integer(x)
comp<-sample(1:100, 3, replace=TRUE)
if (comp < x) {
  print("high")
} else 
{
  if (comp > x) {
    print("low")
  } 
  else print(comp)
}

