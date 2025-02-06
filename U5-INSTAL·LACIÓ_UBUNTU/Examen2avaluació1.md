---
title: |
  | SOM-2ª AVALUACIÓ. 1SMX B
subtitle: |
  |  Model A
Author: "Tomàs Ferrandis Moscardó"
output:
  html_document:
    toc: true
    toc_float: true
    toc_depth: 2
    df_print: paged
    number_sections: false
  pdf_document: 
    toc: false
    keep_tex: true
  word_document:
    toc: true
    toc_depth: '3'
lang: "es-ES"
fontsize: 12 pt
mainfont: Times New Roman
papersize: A4
linestretch: 1.5
---

# Script compta tipus de fitxer en carpeta.

Heu de crear un script que **compte el número de fitxers amb extensió html d'una carpeta** que es passarà com argument. Però heu de fer l'examen per parts, com a classe.

## Part 1

Ens oblidem de l'script de moment i assumim una carpeta concreta per fer les proves ().
Fem les proves en el terminal per aconseguir **guardar** quants fitxers html hi ha i informar en un missatge.

## Part 2
Ajuda:

```
#!/bin/bash
```

### Creem l'script
Creem un fitxer i usem el codi que hem fet adés però ara la carpeta ens la donaran a través d'un paràmetre.

### Vul que asseure's que 
Sigues el propietari tu i el grup siga root

|tu |grup root propietari|altres|
|--|--|--|
|pot modificar i executar|només pot executar i llegir, no modificar|no pot ni vore el contingut per raons de seguretat|

## Part 3

Controlem que no hi ha errors en els paràmetres. 
* Ha de ser 1. En cas contrari, avortarà indicant un codi d'error distint de 0 ( el 10 ).

* Ha de ser un directori. En cas contrari, avortarà indicant un codi d'error distint de 0 ( el 20).

## Part 4

Observa l'execució correcta de l'script:
```bash
tomas@portatil:~$ ls -l comptaHTML.sh
-rwxr-x--- 1 tomas tomas 351 de febr.  2 13:32 comptaHTML.sh
tomas@portatil:~$ ./comptaHTML.sh /home
Hi ha 5 en .
```

Explica els errors i contesta a les preguntes.

a.  Per què falla ?

b.  Qui dona el missatge d'error, l'script o el SO ?

Cas 1
```bash
tomas@portatil:~$ ./comptaHTML.sh fgte
Error: El paràmetre no és un directori.
```


Cas 2
```bash 
tomas@portatil:~$ ./comptaHTML.sh /home /dev
Error: Has de proporcionar exactament un paràmetre.
```
Cas 3
```bash
tomas@portatil:~$ comptaHTML.sh .
comptaHTML.sh: no s'ha trobat l'ordre
```




