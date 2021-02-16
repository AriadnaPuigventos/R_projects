#Vector
#Ejercicio 3
vector = c()
values = c(0,1,2,3,4,5,6,7,8,9)
for (i in 1:length(values))
  vector[i] <- values[i]
print(vector)

#Ejercicio 6
x = c(10, 20, 30)
print("Sum:")
print(sum(x))
print("Mean:")
print(mean(x))  
print("Product:")
print(prod(x))

#Ejercicio 7
x = c(10, NaN, 20, 30, NA)
print("Sum:")
print(sum(x, na.rm = TRUE))
print("Mean:")
print(mean(x, na.rm = TRUE))  
print("Product:")
print(prod(x, na.rm = TRUE))

#Ejercicio 8
x = c(10, 40, 20, 30, 26)
print("Max:")
print(max(x))
print("Min:")
print(min(x))
y <- c(10, NaN, 20, 30, NA)
print("Quiero probar de quitar los non-values en una sd:")
print(sd(x, na.rm = TRUE)) 

#Ejercicio 9
x = c(10, 20, 30, 25, 9, 26)
print(x)
print("Sort in ascending order:")
print(sort(x))
print("Sort in descending order:")
print(sort(x, decreasing=TRUE)) #Efectivamente sí funciona con decreasing=FALSE te lo ordena de menor a mayor

#Ejercicio 10
x = c(10, 20, 30, 25, 9, 26)
print("Test whether above vector contains 25:")
print(is.element(25, x))
print("Test whether above vector contains 56:")
print(is.element(56, x))

#Ejercicio 12
x = c(10, 20, 30, 25, 9, 26)
print(class(x)) #Quería confirmar que la x de qué tipo es.
print(typeof(x))
print(is.vector(x))
print("Acces to the last element in a vector:")
print(tail(x, n=1))

#Ejerciciio 13
x = c(10, 20, 30, 25, 9, 26)
print("Get second highest value in a vector:")
l = length(x)
print(sort(x, partial = l-1)[l-1]) #sigo sin entender partial

#Ejercicio 14
l = length(x)
print(sort(x, partial = l-2)[l-2]) #por lo lógica del anterior código

#Ejercicio 16 de vector a dataframe
col1 = c(1, 2, 3, 4, 5)
print(is.vector(col1))
col2 = c(6, 7, 8, 9, 10)
col3 = c(11, 12, 13, 14, 15)
col4 = c(16, 17, 18, 19, 20)
v <- data.frame(col1=1:5, col2=6:10, col3=11:15, col4=16:20)
print(v)
print(is.vector((v)))
print(is.data.frame(v))

#Ejercicio 20
v = c(0, 10, 10, 10, 20, 30, 40, 40, 40, 50, 60)
rv = rev(v)
print("The said vector in reverse order:")
print(rv)

#Ejercicio 23
df = data.frame(countries = c("EEUU","France","INDO","AUSTRALIA"), 
                cities = c("New York", "Paris", "Bali", "Byron Bay")
)
print("Original df:")
print(df)
print(is.data.frame(df))
print(is.vector(df[[1]])) #He querido probar cómo confirmar el tipo al vector
result = setNames(as.character(df$cities), df$countries) #¿Cómo se consigue el orden, primero los países y luego las ciudades?
print(result)