---
title: |
  | U7- ADMINISTRACIÓ D'UBUNTU
subtitle: |
  |  INTRODUCCIÓ ALS SCRIPTS
author: "Tomàs Ferrandis Moscardó"
output:
  pdf_document: 
    toc: false
    keep_tex: true
  html_document:
    toc: false
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


# 1. La primera línia: `#!/bin/bash`  
- La línia `#!/bin/bash` indica al sistema que ha d'executar l'script amb Bash.  
- Sense aquesta línia, el sistema podria intentar executar l'script amb un altre shell i donar errors.  

# Exemple:
```bash
#!/bin/bash
echo "Aquest script s'executa amb Bash"
```

# 2. Extensió i assignació de permís d'execució  
- Els scripts solen tenir l'extensió `.sh` per identificar-los fàcilment.  
- Passos per crear i executar un script:  
  1. **Crea un fitxer nou:**  
     ```bash
     nano exemple.sh
     ```
  2. **Escriu el codi dins del fitxer i guarda'l.**  
  3. **Dona permís d'execució:**  
     ```bash
     chmod +x exemple.sh
     ```
  4. **Executa l'script:**  
     ```bash
     ./exemple.sh
     ```

# 3. Assignar valor a una variable i llegir-la  
- Pots assignar valors a variables sense espais:  
  ```bash
  nom="Maria"
  ```
- Per utilitzar o llegir el valor de la variable, escriu `$` seguit del nom:  
  ```bash
  echo "Hola, $nom!"
  ```
- Per llegir dades de l'usuari, utilitza `read`:  

  ```bash
  #!/bin/bash
  echo "Com et dius?"
  read nom
  echo "Hola, $nom! Encantat de conèixer-vos."
  ```

# 4. Els paràmetres especials `$0`, `$1`, `$2`, ...  
- Quan executes un script, pots passar valors com a paràmetres.  
- Aquests es llegeixen amb `$1`, `$2`, etc.  

# Exemple d'script amb paràmetres:
```bash
#!/bin/bash
echo "Nom de l'script: $0"
echo "Primer paràmetre: $1"
echo "Segon paràmetre: $2"
```

# Com executar-lo:  
```bash
./exemple.sh Hola Món
```

# Sortida:  
```
Nom de l'script: ./exemple.sh
Primer paràmetre: Hola
Segon paràmetre: Món
```

# 5. Comprovar si un paràmetre és un fitxer o un directori amb `if`  
- Amb condicions, pots comprovar si un paràmetre és un fitxer o un directori.

# Exemple:  
```bash
#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Per favor, passa un fitxer o directori com a paràmetre."
  exit 1
fi

element=$1

if [ -f "$element" ]; then
  echo "$element és un fitxer."
elif [ -d "$element" ]; then
  echo "$element és un directori."
else
  echo "$element no existeix o no és ni un fitxer ni un directori."
fi
```

# Com executar-lo:  
```bash
./exemple.sh nom_fitxer_o_directori
```

# Resum de comandes clau  
1. `#!/bin/bash`: Especifica que l'script s'executa amb Bash.  
2. `chmod +x nom_script.sh`: Dona permisos d'execució.  
3. `$0`, `$1`, `$2`: Accedeix al nom de l'script i als paràmetres.  
4. `read`: Llegeix una entrada de l'usuari.  
5. `[ -f ]`, `[ -d ]`: Comprova si un paràmetre és un fitxer o un directori.  

