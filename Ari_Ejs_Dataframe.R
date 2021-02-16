#Data.frame
#Ejercicio 1
df = data.frame(Ints=integer(),
                Doubles=double(),
                Characters=character(),
                Logicals=logical(),
                Factors=factor(),
                stringsAsFactors=FALSE)
print("Structure of the empty dataframe:")
print(str(df))

#Ejercicio 2
name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas')
score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19)
attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1)
qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
print("Original data frame:")
print(name)
print(score)
print(attempts)
print(qualify)
df = data.frame(name, score, attempts, qualify) #A saco con los vectores
print(df)

#Ejercicio 3
print(str(df)) #¿Por qué sale NULL??
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
print("Structure of the said data frame:")
print(str(exam_data))

#Ejercicio 4
print(summary(df))
print(summary(exam_data))

#Ejercicio 5
print("Extract specific colum")
result <- data.frame(exam_data$attempts,exam_data$qualify)
print(result)
print(head(result)) #Quería confirmar cuántas filas te mostraba head

#Ejercicio 6 y 7
print(exam_data[1:2,])
print(exam_data[(3, 5), (1, 3)]) #Error
print(exam_data[c(3, 5), c(1, 3)]) 

#Ejercicio 8
exam_data$country = c("USA","USA","USA","USA","USA","USA","USA","USA","USA","USA")
print(exam_data)

#Ejercicio 9
new_exam_data = data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no')
)
exam_data =  rbind(exam_data, new_exam_data)
print("After adding new row(s) to an existing data frame:")
print(exam_data)

#Ejercicio 10 eliminar cols
exam_data = subset(exam_data, select = -c(name, qualify))
print(exam_data)

#Ejercicio 11
exam_data <- exam_data[-c(2, 4, 6), ]
print(exam_data)

#Ejercicio 12
exam_data = exam_data[with(exam_data, order(attempts, score)), ]
print(exam_data)

#Ejercicio 13 #Me gustaría entender la síntaxy
#Ejercicio 14
exam_data = data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, NA, 2, NA, 2, NA, 1, NA, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
print("Original dataframe:")
print(exam_data)
exam_data[is.na(exam_data)] = 3
print("After removing NA with 3, the said dataframe becomes:")
print(exam_data)

#Ejercicio 15 y 16 Cambiar el nombre de la columna por otro
colnames(exam_data)[which(names(exam_data) == "name")] = "student_name"
print(exam_data)
colnames(exam_data)[which(names(exam_data) == "score")] = "avg_score"
print(exam_data)

#Ejercicio 17
print(exam_data[sample(nrow(exam_data), 3),])

#Ejercicio 18
exam_data = exam_data[c("name", "attempts", "score", "qualify")]
print(exam_data)
exam_data = order(colnames(exam_data), descending = FALSE)
print(exam_data)

#Ejercicio 19
df_90 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 14, 15)
)
df_91 = data.frame(
  "item" = c("item1", "item2", "item3"),
  "Jan_sale" = c(12, 14, 12),
  "Feb_sale" = c(11, 12, 15),
  "Mar_sale" = c(12, 15, 18)
)
print("Original Dataframes:")
print(df_90)
print(df_91)
print("Row(s) in first data frame that are not present in second data frame:")
print(setdiff(df_90,df_91))

#Ejercicio 20 y 21
a = c("a", "b", "c", "d", "e")
b = c("d", "e", "f", "g")
print("Original Dataframes")
print(a)
print(b)
print("Elements which are present in both dataframe:")
result = intersect(a, b)
print(result)
similar = union(a, b)
print(similar)

#Ejercicio 22
save(exam_data,file="data.rda")
load("data.rda")
file.info("data.rda") 

#Ejercicio 23
print("The number of NA values in attempts column:")
print(sum(is.na(exam_data$attempts)))

#Ejercicio 24
a = c(10,20,10,10,40,50,20,30)
b = c(10,30,10,20,0,50,30,30)
print("Original data frame:")
ab = data.frame(a,b)
print(ab)
print("Duplicate elements of the said data frame:")
print(duplicated(ab))
print("Unique rows of the said data frame:")
print(unique(ab))

#Ejercicio 25
data = airquality
print("Original data: Daily air quality measurements in New York, May to September 1973.")
print(class(data))
print(head(data,10))
result = data[order(data[,1]),] #No entiendo este punto ¿cómo sabe by la columna que quiero order?
print("Order the entire data frame by the first and second column:")
print(result) #En el siguiente punto elimino los NAN

#Ejercicio 26
data = airquality
print("Original data: Daily air quality measurements in New York, May to September 1973.")
print(data)
data[,c("Solar.R")]=NULL
data[,c("Wind")]=NULL
print("data.frame after removing 'Solar.R'  and 'Wind' variables:")
print(data)

#Quiero eliminar las filas que contienen nan: #MI BONUSTRACK ;))
x <- na.omit(data)
print(x)




#Ejercicio 20

