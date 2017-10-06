#R script that compares user input x and a random number comp 
#prompt to capture user input using the readline() function
x <- readline(prompt="Enter x: ")
x <- as.integer(x) #take user input
comp<-runif(1, 0, 10^2) #runif() function to compute ramdom numbers
y<-round(comp,digits=0) #round() function  to round off the random numbers
print(y) #print the number just to check
#if statement to compare comp and x
if (y < x) {
  print("high")
} else 
{
  if (y > x) {
    print("low")
  } 
  else print(y)
}
