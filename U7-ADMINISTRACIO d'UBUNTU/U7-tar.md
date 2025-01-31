---
title: |
  | U7-ADMINISTRACIÓ D'UBUNTU. Empaquetar i comprimir (tar)
subtitle: |
  |  Empaquetar i comprimir **tar**
Author: "Tomàs Ferrandis Moscardó"
output:
  pdf_document: 
    toc: false
    keep_tex: true
  html_document:
    toc: true
    toc_float: true
    toc_depth: 2
    df_print: paged
    number_sections: false
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

`tar -cxf arxiu.tar carpeta/`

Aquest comandament empaqueta el contingut de **carpeta/** en un arxiu `.tar`.  

- `-c` → Crea un nou arxiu `.tar`.  
- `-x` → (Error) Aquesta opció s'utilitza per extreure, però aquí no és necessària.  
- `-f` → Especifica el nom del fitxer `.tar`.  

---

## 2.2 Desempaquetar i descomprimir. `tar -xf arxiu.tar`

Esta ordre **extreu** el contingut d'un arxiu `.tar` a la ubicació actual.  

- `-x` → Extreu fitxers d'un arxiu `.tar`.  
- `-f` → Indica el nom de l'arxiu a extreure.  

Si l'arxiu està comprimit amb `gzip` (`.tar.gz`), cal afegir `-z` així:  
```bash
tar -xzf arxiu.tar.gz
```

## 2.3 Ús de l’opció `-C` en `tar`  

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

