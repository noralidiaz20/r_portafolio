## Ejercicio: values of the wingspan (in cm) measured on four different species of birds
## Escrito by Norali Diaz 29/12/2025
## Producir un barplot de la media de wingspan de cada especie y guardarlo en la computadora


# Intalar paquetes ----

install.packages("dplyr")

# Libreria ----

library(dplyr)

# Set Work Directory ----

setwd("~/Desktop/DataScience for Ecologist/CC_course_stream1-master/TinySteps")

# Importar datos ----

w <- read.csv("Wingspan.csv")

# Chequear ----

head(w)                
tail(w)                
str(w) 

w$bird_sp <- as.factor(w$bird_sp)
class(w$bird_sp)

dim(w)
summary(w)
summary(w$bird_sp)

## Calcular la media

eagle <- filter(w, bird_sp == "eagle")
hummingbird <- filter(w, bird_sp == "hummingbird")
kingfisher <- filter(w, bird_sp == "kingfisher")
sparrow <- filter(w, bird_sp == "sparrow")

a <- mean(eagle$wingspan)
b <- mean(hummingbird$wingspan)
c <- mean(kingfisher$wingspan)
d <- mean(sparrow$wingspan)

a
b
c
d

## Crear un barplot

aves <- c(a, b, c, d)
names(aves) <- c("eagle",
                 "hummingbird",
                 "kingfish",
                 "sparrow")

barplot(aves, col = "lightblue", main = "Media Wingspan", xlab = "aves", ylab = "media", ylim = c(0, 200), cex.names = 0.8)



