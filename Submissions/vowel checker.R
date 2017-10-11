x <- readline(prompt = "Enter Sentence: " ) 
sentence = as.list(strsplit(x, "" )[[1]]) #split the sentence into characters and store them as list


vowels = list("a","e","i","o","u") # store vowels as a list
#print(sentence)

#print (vowels) 

print( vowels %in%  sentence )
print((intersect(vowels,sentence)))
print(length((intersect(vowels,sentence))))