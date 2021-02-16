#list
#Ejercicio 1
list_data = list("Python", "PHP", c(5, 7, 9, 11), TRUE, 125.17, 75.83)
print("Data of the list:")
print(list_data)

#Ejercicio 8 He ido un poco a mi bola para confirmar conceptos
n1 = list(1,2,3)
c1 = list("Red", "Green", "Black")
print("lists")
print(n1)
print(c1)
print(is.list(n1))
print(class(c1))
print("Merge the said lists:")
onelist = c(n1, c1)
print("New merged list:")
print(onelist)
print(onelist[[2]])
print(onelist[[5]]) #Quería confirmar que lo entendía
sin_concat <- list(n1, c1)
print(sin_concat)
print(class(sin_concat))
print(sin_concat[[2]][1])

#Ejercicio 10
df1 = data.frame(y1 = c(0, 1, 2), y2 = c(3, 4, 5))
df2 = data.frame(y1 = c(6, 7, 8), y2 = c(9, 10, 11))
new_list = list(df1, df2)
print("New list:")
print(new_list)
print("Data frame-1")
print(new_list[[1]])
print("Data frame-2")
print(new_list[[2]])

#Ejercicio 11
list_data <- list(c("Red","Green","Black"), matrix(c(1,3,5,7,9,11), nrow = 2),
                  list("Python", "PHP", "Java"))
print("List:")
print(list_data)
print("Number of objects in the said list:")
length(list_data)
print(class(list_data[[2]])) #Que sea de tipo Matrix y array ¿pueden cohexistir?

#Ejercicio 12
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
new_list = split(exam_data, seq(nrow(exam_data))) #Esta parte del código no la entiendo...¿?
print("dataframe rows to a list:")
print(new_list)

#Ejercicio 14
l = list(1, 2, 3, 4, 5)
print("Original list:")
print(l)
print("Set 2nd and 3rd elements to NULL")
l[2] = list(NULL)
print(typeof(l[2]))
l[3] = list(NULL) 
print(l)