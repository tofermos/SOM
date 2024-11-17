---
title: ACTIVITAT BOTIGA
author: "@tofermos 2024"
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

\newpage
\renewcommand\tablename{Tabla}

# Activitat 1: PC mostrador botiga amb 2 usuaris

## Descripció del problema

Tenim un PC en un mostrador d'una botiga de telefonia mòbil on treballen 2 técnics-venedors i anem a fer la FCT-Dual. Cadascun treballarem en un torn diferent i necessitem compartir informació. Per a què quede contància de què fa cadascun de nosaltres hem de crear un usuari diferent per a cadascú:

* tecnicMati
* tecnicVesprada
* tecnicFCTDual

Veiem que, en crear-los, el sistema els ha assignat un grup per defecte però nosaltres necessitem per administrar recursos organitzar-nos. Convé que els incloem a tots al mateix grup així usarem el grup per assignar permisos a carpetes, per exemple i no un a un:

* gr_tecnics


Crearem una carpeta on compartirem documents entre els tres en *`/home/catalegs`*

Ningú més ha de poder llegir els fitxers d'esta carpeta.

## Indicacions a seguir. 

Resol i contesta:

1- Crea els usuaris. Fes un inici de sessió en cadascun 

2- Crea el grup i assigna els usuaris amb *usermod*

3- Crea la carpeta amb *`mkdir`* o el GUI. Indica els problemes que trobes i como ho soluciones.

4- Intenta entrar a la carpeta amb qualsevol usuari i crear un fitxer

5- Indica el problema i com ho soluciones.

6- Torna a provar

