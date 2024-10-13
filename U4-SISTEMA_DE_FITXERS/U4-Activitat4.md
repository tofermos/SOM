---
title: |
  | U4: Sistema de fitxers (I) 
author: tofermos
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
    toc_depth: '3'
lang: "es-ES"
fontsize: 12 pt
mainfont: Times New Roman
papersize: A4
linestretch: 1.5
---

\newpage
\renewcommand\tablename{Tabla}
---

## Exercicis sobre fitxers

1. Llista fitxers del directori actual i, després, el del pare. 
2. Crea `document.txt` a `/home/usuari/Documents`.  
3. Mou `document.txt` a `Baixades`.  
4. Elimina `document.txt`.  
5. Crea `informe.txt`.  
6. Mostra el contingut de `informe.txt`.  
7. Consulta `informe.txt` paginat. 
8. Crea còpia de `informe.txt` com a `copia_informe.txt`
9. Mou `copia_informe.txt` a `/tmp`.  
10. Elimina `copia_informe.txt`.  
11. Crea una carpeta `Projecte` dins de Documents
12. Crea `items` dins `Projecte`.  
14. Elimina `items` dins `Projecte`.  
15. Navega a `/home/usuari/Documents`.  
16. Llista `/etc`.  
17. Llista `Projecte`.  
18. Canvia a `/tmp`.  
19. Crea `Desenvolupament` dins `/home/usuari/Documents`.  
20. Elimina `Desenvolupament`.  
21. Canvia a `Documents` amb **ruta absoluta**.  
22. Canvia a `Documents` amb **ruta relativa**.  
23. Llista `/var/log` amb **ruta absoluta**.  
24. Llista `logs` amb **ruta relativa**.  
25. Classifica rutes com relatives o absolutes. 

|Ruta|Tipus|
|:--|:--|
|../papers||
|./fitxer1.txt||
|/home/tomas||
|Documents/curs2024||

26. Crea un enllaç simbòlic a `document.txt`.  
27. Comprova si el nombre d'inodes ha canviat després de crear l'enllaç simbòlic. (stat o ls -li) 
28. Crea un enllaç dur a `document.txt`.  
29. Comprova si el nombre d'inodes ha augmentat després de crear l'enllaç dur.
30. Mostra informació detallada d'un fitxer amb `stat`. 
31. Mostra el número d'inode de l'enllaç simbòlic.  
32. Comprova si un enllaç dur comparteix inode amb l'original.
33. Elimina el primer enllaç i repeteix la comprovació
34. Elimina el segon enllaç i repeteix la comprovació 
35. Crea un fitxer buit i fes dos enllaços durs
36. Fes un stat dels tres. Explica les diferències.
37. Elimina el fitxer "original". Fes un stat dels dos que queden i explica els canvis que veus.

