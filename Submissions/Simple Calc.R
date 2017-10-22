print(" whatchu wanna do to day ?")
print(" Enter 1 to add ,Enter 2 to Subtract, Enter 3 to Multiply ,Enter 4 to Divide")

MenuOption <- readline(prompt = "Enter Option :")
if (MenuOption == 1){
  y <- as.numeric(readline(prompt = "Enter number first number: " ))
  z <- as.numeric(readline(prompt = "Enter number second number: " ))
  
  print(y+z)
  
}else if (MenuOption == 2)
  
{
  y <- as.numeric(readline(prompt = "Enter number first number: " ))
  z <- as.numeric(readline(prompt = "Enter number second number: " ))
  
  print(y-z)
  
}else if (MenuOption == 3){
  y <- as.numeric(readline(prompt = "Enter number first number: " ))
  z <- as.numeric(readline(prompt = "Enter number second number: " ))
  print(y*z)
  
  
}else if(MenuOption == 4){
  y <- as.numeric(readline(prompt = "Enter number first number: " ))
  z <- as.numeric(readline(prompt = "Enter number second number: " ))
  print(y/z)
  
}else
  
{
  print("wrong entry")
}
