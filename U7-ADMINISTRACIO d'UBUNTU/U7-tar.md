---
title: |
  | U7-ADMINISTRACIÓ D'UBUNTU. Empaquetar i comprimir (tar)
subtitle: |
  |  Empaquetar i comprimir **tar**
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
# 1 Introducció: Empaquetar i comprimir  

En informàtica, **empaquetar** i **comprimir** són processos diferents però relacionats:  
- **Empaquetar**: Agrupar diversos fitxers en un sol arxiu sense reduir-ne la mida.  
- **Comprimir**: Reduir la mida d'un fitxer utilitzant algoritmes com `gzip` o `bzip2`.  

L'eina `tar` (Tape ARchive) s'utilitza per empaquetar fitxers en un sol arxiu `.tar`. Si es combina amb `gzip` (`.tar.gz`), també es poden comprimir.

---

# 2 L'ordre `tar`  

## 2.1 Empaquetar i comprimir

`tar -czf arxiu.gz *`

Aquest comandament empaqueta el contingut de **carpeta/** en un arxiu `.tar`.  

- `-c` → Crea un nou arxiu `.tar`.  
- `-z` → Indica que l'arxiu serà comprimit. En compte de `.tar` usarem `.gz`
- `-f` → Especifica el nom del fitxer `.gz`.  

---

## 2.2 Desempaquetar i descomprimir. `tar -xf arxiu.gz`

Esta ordre **extreu** el contingut d'un arxiu `.gz` a la ubicació actual.  

- `-x` → Extreu fitxers d'un arxiu `.tar`.  
- `-f` → Indica el nom de l'arxiu a extreure.  

Si l'arxiu està comprimit amb `gzip` (`.tar.gz`), cal afegir `-z` així:  
```bash
tar -xzf comprimit.gz 
```

## 2.3 Exemple:

1.- Tenim 3 fitxers (f1.txt, f2...) i una carpeta novaCarpeta

```bash
tomas@portatil:~/Documents/borrar$ ls -l
total 7
-rw-rw-r-- 1 tomas tomas    0 de febr. 12 12:39 f1.txt
-rw-rw-r-- 1 tomas tomas    0 de febr. 12 12:39 f2.txt
-rw-rw-r-- 1 tomas tomas    0 de febr. 12 12:39 f3.txt
drwxrwxr-x 2 tomas tomas 4096 de febr. 12 12:44 novaCarpeta
```

2- Fem un fitxer comprimit dels 3 fitxers amb el tar -czf i comprovem...

```bash
tomas@portatil:~/Documents/borrar$ tar -czf comprimit.tz f?.txt
tomas@portatil:~/Documents/borrar$ ls -l
total 8
-rw-rw-r-- 1 tomas tomas  136 de febr. 12 12:48 comprimit.tz
-rw-rw-r-- 1 tomas tomas    0 de febr. 12 12:39 f1.txt
-rw-rw-r-- 1 tomas tomas    0 de febr. 12 12:39 f2.txt
-rw-rw-r-- 1 tomas tomas    0 de febr. 12 12:39 f3.txt
drwxrwxr-x 2 tomas tomas 4096 de febr. 12 12:44 novaCarpeta
```

3-  Movem el comprimit a la carpeta novaCarpeta amb el *mv*
```bash
tomas@portatil:~/Documents/borrar$ mv comprimit.tz novaCarpeta/
```

4- Borrem els fitxers f1.txt, f2.txt, f3.txt...

Pensem que es tracta d'un borrat accidental o que ha entrat un virus...

```bash
tomas@portatil:~/Documents/borrar$ rm f?.txt
```

5 - Comprovem el contingut ( ja no estan els fitxers f?. txt)

```bash
tomas@portatil:~/Documents/borrar$ ls -l
total 1
drwxrwxr-x 2 tomas tomas 4096 de febr. 12 12:48 novaCarpeta
```
L'accident ens ha deixat sense fitxers...

6- Ara recuperarem els fitxers (tar -xf ) de la copia comprimida.
```bash
tomas@portatil:~/Documents/borrar$ tar -xf novaCarpeta/comprimit.tz
```
7- Comprovem que els hem recuperat.

```bash
tomas@portatil:~/Documents/borrar$ ls -l
total 4
-rw-rw-r-- 1 tomas tomas    0 de febr. 12 12:39 f1.txt
-rw-rw-r-- 1 tomas tomas    0 de febr. 12 12:39 f2.txt
-rw-rw-r-- 1 tomas tomas    0 de febr. 12 12:39 f3.txt
drwxrwxr-x 2 tomas tomas 4096 de febr. 12 12:48 novaCarpeta
```

## 2.4 Ús

A banda de poder reproduir l'exemple anterior creant fitxers amb *touch* i carpetes amb *mkdir* ( o des de l'entorn gràfic), podeu fer-se còpies de seguretat comprimides dels fitxers dels altres mòduls a un pen, disc extraïble o el núvol. 


*FINS ACÍ CAL SABER*

## (Opcional) 2.3 Ús de l’opció `-C` en `tar`  

L’opció `-C` permet especificar el directori on s’ha de realitzar l’operació. Això és útil tant per empaquetar com per extreure fitxers en una ubicació diferent.  

### Empaquetar sense incloure la carpeta contenidora
Si volem empaquetar el contingut d'una carpeta sense incloure la carpeta en si, podem fer:  

```bash
tar -cf arxiu.tar -C carpeta/ .
```

Això empaquetarà **els fitxers dins** de `carpeta/`, però no la carpeta en si.  


### Extreure en un directori específic

Per defecte, `tar` extreu els fitxers en la ubicació actual. Si volem extreure’ls en un altre directori, fem:  

```bash
tar -xf arxiu.tar -C /ruta/destí
```

Això descomprimirà els fitxers dins de `/ruta/destí` en lloc de fer-ho en el directori actual.  

