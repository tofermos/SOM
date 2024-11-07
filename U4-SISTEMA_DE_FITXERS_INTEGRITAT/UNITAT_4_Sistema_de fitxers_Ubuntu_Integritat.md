---
title: U4. Sistema de fitxers. Ubuntu (II)
subtitle: INTEGRITAT
author: "@tofermos 2024"
output:
  html_document:
    toc: true
    toc_float: true
    toc_depth: 2
    df_print: paged
    number_sections: false
  pdf_document: 
    toc: true
    keep_tex: true
  word_document:
    toc: true
    toc_depth: 3
lang: "es-ES"
fontsize: 12 pt
mainfont: Times New Roman
papersize: A4
linestretch: 1.5
---

\newpage
\renewcommand\tablename{Tabla}


# 1. Introducció

Fem un apunt teòric general com introducció explicant el concepte de la *tríada de seguretat**.
Podem dir que es refereix a tres principis bàsics que hem d'assegurar en tota informació:

1. **Confidencialitat**: Evitar accessos no autoritzats i mantindre la **privacitat** de la informació. Assegurar que la informació només estiga disponible per a persones o sistemes autoritzats. Ho implementarem a la unitat següent amb els **permisos**

2. **Integritat**: Garanteix que la informació siga **correcta** i estiga completa, evitant modificacions no autoritzades. La integritat assegura que les dades no siguen alterades indegudament, siga de manera accidental o intencionada, mantenint la veracitat i l'exactitud de la informació.

3. **Disponibilitat**: Garanteix que la informació siga **accessible** per als usuaris autoritzats. Ho implementem amb els **permisos** en monoestació i **la compartició i permisos** en xarxa.

En este tema curtet anem a vore un aspecte de la integritat que ja s'ha apuntat en el 2n tema de la Unitat 1.

