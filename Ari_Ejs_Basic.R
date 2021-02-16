#Basic
#Ejercicio 3
print("Sequence of numbers from 20 to 50:")
print(seq(20,50))
print("Mean of numbers from 20 to 60:")
print(mean(20:60))
print("Sum of numbers from 51 to 91:")
print(sum(51:91))

#Ejercicio 4
v <- sample(-50:50, 10, replace=TRUE) #¿Cómo sabe que quiero integers?
y <- sample(1.5:20.5, 10, replace=TRUE) #Por lógica he aplicado lo mismo con los floats y deberían de salir 10 floats
print(v)
print(y)

#Ejercicio 5 #Porque lo he copiado pero entiendo que es la lógica de la serie de Fibo
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)

#Ejercicio 7
for (i in 1:100) {
  if (i %%3 == 0) {print("Fizz")}
  else if (i %%5 == 0) {print("Buzz")}
  else if (i %%5 == 0 & i %%3 == 0) {print("FizzBuzz")} #No hay ninguna i que cumpla esta condición
  else print(i)
}

#Ejercicio 9
print_factors = function(n) {
  print(paste("The factors of",n,"are:"))
  for(i in 1:n) {
    if((n %% i) == 0) {
      print(i)
    }
  }
}
print_factors(4)
print_factors(7)
print_factors(12)

#Ejercicio 10
nums = c(10, 20, 30, 40, 50, 60)
print(paste("Maximum value of the said vector:", max(nums)))
print(paste("Minimum value of the said vector:", min(nums)))

#Ejercicio 13
random <- sample(list(1:50, 45, replace=TRUE))
print(random)
random <- trunc(1000, 800) #Entender qué significa función trunc
print(random)
random <- floor(rnorm(1000, 800))
print(random)
print(class(random)) #Dice que es númeric y ¿si lo quiero list?
random <- list(random) 
print(class(random)) #lo convierto a lista ¡y listo!
print(table(random))

#Lo he encontrado entre la documentación, y no entiendo función match:
l = LETTERS[match("E", LETTERS):(match("E", LETTERS)+15)]
print("Sequence of 15 capital letters, starting from ‘E’-")
print(l)

#Ejercicio 15 
num = c(1, 2, 5, 3, 4, 0, -1, -3)
cara = c("Red", "Green", "White")
bool = c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)
print(num)
print(cara)
print(bool)
print(class(bool))

#Ejercicio 22 
n = floor(rnorm(10000, 500, 100))
t = table(n)
plot(t) #He querido probar otro gráfico
# Libraries
library(ggplot2)
library(dplyr)

#Ejercicio 25
Employees = data.frame(Name <- c("Anastasia S","Dima R","Katherine S", "JAMES A","LAURA MARTIN"),
                       Gender=c("M","M","F","F","M"),
                       Age=c(23,22,25,26,32),
                       Designation=c("Clerk","Manager","Exective","CEO","ASSISTANT"),
                       SSN=c("123-34-2346","123-44-779","556-24-433","123-98-987","679-77-576")
)
print("Details of the employees:")                      
print(Employees)
print(class(Employees[[5]])) #Quería saber con estos símbolos qué tipo de clase

#Ejercicio 26 = 25, este es Ej. 27
print("System's idea of the current date with and without time:")
print(Sys.Date())
print(Sys.time())
print(class(Sys.time()))
