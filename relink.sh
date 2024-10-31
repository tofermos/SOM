#!/bin/bash

# Definim una variable amb el valor 10
limit=10

# Bucle for que itera des de 1 fins al valor de la variable
for ((i=1; i<=limit; i++))
do
   ln $1 f${i}

done
