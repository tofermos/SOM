---
title: U5. PREPARAR VEMNTOY EN WINDOWS 1x
subtitle: Preparar un Pendrive amb Ventoy des de Windows 11
author: "@tofermos 2026"
lang: "ca-ES"
papersize: A4
linestretch: 1.5
output:
  html_document:
    toc: true
    toc_float: true
    toc_depth: 3
    df_print: paged
    number_sections: false
  pdf_document:
    toc: true
    keep_tex: true
    latex_engine: xelatex
---

El Ventoy és una utilitat per a preparar un Pendrive. Una vegada instal·lada al Pen, podrem usar-lo per instal·lar el SO que vullguem.
Només caldrà copiar les ISOs dels SOs al Pen (tantes com càpiguen !) o altre software per inicar com el Clonezilla

\newpage
\renewcommand\tablename{Tabla}

# 1. Preparació

## 1.0 Formatar el PenDrive

Formatarem el pendrive en el sistema de fitxers NTFS per a no tindre problemes amb les ISO superiors a 

El seleccionem i, amb botó contrari selecciones Formatear
![*Figura 0: Fomatar el PenDrive*](png/VentoyWindows11-0-formatear.png)

![*Figura 0: Fomatar el PenDrive*](png/VentoyWindows11-0-formatNTFS.png)

## 1.1. Descarregar Ventoy

1. Accedeix a la pàgina oficial de Ventoy: [https://www.ventoy.net](https://www.ventoy.net).
2. Descarrega el fitxer per a Windows (.zip).

![*Figura 1: Descàrrega del Ventoy*](png/VentoyWindows11-1-download.png)
![*Figura 2: Descàrrega del Ventoy*](png/VentoyWindows11-2-zip.png)


## 1.2 Descomprimir (extreure) en C:\users\usuari\Documents

1. Botó contrari i seleccionar "Extraer todo"

![*Figura 3: Descomprimeix (extreu)*](png/VentoyWindows11-3-descomprimir.png)

2.- Escollir destí 

![*Figura 4: Canviar a Documents (opcional)*](png/VentoyWindows11-4-desti.png)

# 2 Instal·lar 

## 2.1 Connecta el pendrive

1. Connecta el pendrive que vols preparar.
2. Identifica el dispositiu del pendrive al explorador

![*Figura 5: Comprovem des del GUI o des del cmd (CLI)*](png/VentoyWindows11-5-pen.png)


##  2.2 Instal·lar Ventoy al pendrive

Per instal·lar Ventoy al pendrive: *Localitzem el .exe que intal·la*:
![*Figura 6: Localitzem l'executable que instala el Ventoy*](png/VentoyWindows11-6-exe.png)

Per instal·lar Ventoy al pendrive: *Botó contrari i seleccionar Executar com administrador* el .exe:
![*Figura 7: Executar com administrador*](png/VentoyWindows11-7-comadministrador.png)

Seleccionem el PENDRIVE correcte

![*Figura 8: Instal·lació al pendrive*](png/VentoyWindows11-8-pen.png)
![*Figura 9: Avís de que va a formatar-se tot el pen*](png/VentoyWindows11-9-confirm.png)
---


**Ja tenim el Ventoy instal·lat !**

# 3. Copia d’arxius ISOs

> Nota:
> Abans de copiar la ISO podem comprovar si està correctament descarregada.
> Opcional però recomanable.

## 3.1 Comprovar cada ISO del SO 

### Mirem quin codi sha256 dona el fitxer descarregat

A les webs de descàrregues de fitxers grans sempre trobarem un codi com el sha256 per a fer la comporvació.

![*Figura 10: Executar el PowerShell*](png/VentoyWindows11-9-ps.png)

![*Figura 11: Executem el cmdLet que obté el codi hash256*](png/VentoyWindows11-9-hash.png)

Comparem amb el que tenim a al web (el tenim a la Figura 1)

## 3.1 Copiem la ISO comprovada

Una vegada instal·lat el Ventoy, el pendrive apareixerà "buit". 

Ara pots copiar qualsevol **arxiu ISO** al pendrive i tindrem tots els SO disponibles per instal·lar.

# 4 Instal·lació del SO.

Ara hem de reinciar el PC i arrancar des del Pendrive.

1. Entrar a la UEFI i canviar el BootOrder: el primer disc a buscar ha de ser el Pen
2. Insertar el pendrive i arrancar.
3. Ens treu un menú on triarem quin SO volem instal·lar.


