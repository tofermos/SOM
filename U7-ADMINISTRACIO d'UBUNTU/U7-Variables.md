---
title: |
  | U7- ADMINISTRACIÓ D'UBUNTU
subtitle: |
  |  VARIABLES
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

# 1 Variables creades per l'usuari

#### **1. Assignar un valor a una variable**
En Bash, assignar un valor a una variable és senzill. No hi ha espais abans o després del signe `=`.

```bash
variable="valor"
```

- **Punts clau:**
  - Les variables són sensibles a majúscules i minúscules (`nom` i `NOM` són diferents).
  - No cal declarar el tipus de variable; Bash interpreta automàticament el tipus.
  - Si el valor conté espais o caràcters especials, s'ha d'envoltar amb cometes dobles `"..."` o simples `'...'`.

**Exemples:**
```bash
nom="Joan"
cognoms="Pérez López"
frase='Hola, món!'

echo "Nom: $nom"
echo "Cognoms: $cognoms"
echo "Frase: $frase"
```

---

#### **2. Assignar el resultat d'una comanda a una variable**
Per assignar el resultat d'una comanda, pots utilitzar **cometes invertides** `` `...` `` o **substitució de comandes** amb `$()`.

```bash
variable=$(comanda)
# o equivalent
variable=`comanda`
```

- **Exemples:**
  ```bash
  data=$(date)
  usuaris=$(who | wc -l)

  echo "La data actual és: $data"
  echo "Hi ha $usuaris usuaris connectats."
  ```

- **Nota:** Es recomana utilitzar `$()` perquè és més llegible i permet l'anidament de comandes.

---

#### **3. Llegir el valor d'una variable**
Per utilitzar el valor d'una variable, precedeix el nom amb `$`.

```bash
echo "$variable"
```

- **Exemples:**
  ```bash
  nom="Maria"
  echo "Hola, $nom!"
  ```

Si necessites accedir a una variable dins d'un text llarg, pots utilitzar `{}` per delimitar el nom:
```bash
prefix="arxiu"
nom="${prefix}_config"
echo "Nom del fitxer: $nom"
```

---

#### **4. Llegir valors des de l'entrada de l'usuari**
La comanda `read` permet assignar valors a una variable llegits de l'entrada estàndard (teclat).

```bash
read variable
```

- **Exemple:**
  ```bash
  echo "Com et dius?"
  read nom
  echo "Hola, $nom!"
  ```

---

### **Resum de bones pràctiques**
1. **Declarar variables sense espais**:
   ```bash
   variable="valor" # Correcte
   variable = "valor" # Incorrecte
   ```
2. **Utilitzar cometes per protegir valors amb espais**:
   ```bash
   nom="Maria López"
   ```
3. **Assignar resultats de comandes amb `$()`**:
   ```bash
   fitxers=$(ls /etc)
   ```
4. **Llegir l'entrada de l'usuari amb `read`**:
   ```bash
   echo "Escriu el teu nom:"
   read nom
   echo "Hola, $nom!"
   ```
   
# 2 Variables del sistema

Les variables del sistema són variables predefinides a Bash que contenen informació sobre l'entorn del sistema, l'usuari, els processos i més. Algunes són només de lectura i altres es poden modificar.

#### **1. Variables d'entorn generals**

| **Variable**   | **Descripció**                                                                          |
|-----------------|-----------------------------------------------------------------------------------------|
| `HOME`         | El directori personal de l'usuari.                                                      |
| `USER`         | El nom de l'usuari actual.                                                              |
| `LOGNAME`      | Nom de l'usuari que ha iniciat sessió.                                                  |
| `PATH`         | Llista de directoris on el sistema busca executables (separats per `:`).                |
| `PWD`          | El directori de treball actual.                                                         |
| `OLDPWD`       | El directori anterior abans del canvi (`cd`).                                           |
| `SHELL`        | El shell predeterminat de l'usuari.                                                     |
| `LANG`         | Configuració regional de l'idioma.                                                      |
| `HOME`         | El directori personal de l'usuari.                                                      |
| `HOSTNAME`     | Nom de l'ordinador o host.                                                              |
| `TERM`         | El tipus de terminal en ús (ex. `xterm`, `vt100`).                                      |

---

#### **2. Variables del sistema relacionades amb processos**

| **Variable**   | **Descripció**                                                                          |
|-----------------|-----------------------------------------------------------------------------------------|
| `UID`          | ID de l'usuari actual (numerat, ex. `0` per a root).                                    |
| `GID`          | ID del grup principal de l'usuari.                                                      |
| `PPID`         | ID del procés pare (el procés que va llançar l'actual).                                 |
| `PID`          | ID del procés actual.                                                                   |
| `_`            | L'últim argument de l'última comanda executada.                                         |

---

#### **3. Variables especials del shell**

Les vorem en la lliçó següent

| **Variable**   | **Descripció**                                                                          |
|-----------------|-----------------------------------------------------------------------------------------|
| `$0`           | El nom de l'script o la comanda executada.                                              |
| `$1, $2, ...`  | Paràmetres passats a l'script (primer, segon, etc.).                                    |
| `$#`           | Nombre total de paràmetres passats.                                                     |
| `$@`           | Tots els paràmetres passats, com una llista separada per espais.                       |
| `$*`           | Tots els paràmetres passats, com una sola cadena de text.                               |
| `$?`           | Codi de sortida de l'última comanda (0 si ha tingut èxit, un altre valor si ha fallat). |
| `$$`           | PID del procés actual (l'script mateix).                                                |
| `$!`           | PID de l'últim procés executat en segon pla.                                            |

---

#### **4. Variables relacionades amb l'execució i l'entorn**

| **Variable**   | **Descripció**                                                                          |
|-----------------|-----------------------------------------------------------------------------------------|
| `ENV`          | Defineix l'script que s'executa quan s'inicia el shell.                                 |
| `BASH_VERSION` | Versió del shell Bash que s'està utilitzant.                                            |
| `SHLVL`        | Nivell del shell (quants shells s'han obert).                                           |
| `RANDOM`       | Retorna un número aleatori cada vegada que s'accedeix.                                  |
| `SECONDS`      | Nombre de segons que el shell ha estat actiu.                                           |
| `PS1`          | El prompt principal del shell (predeterminat: `$`).                                     |

---

### **Com utilitzar aquestes variables**
1. **Consultar el valor d'una variable:**
   ```bash
   echo $USER
   echo $PWD
   ```

2. **Modificar variables (si és permès):**

És convenient fer una còpia abans: 

```bash
PATH_copia= $PATH
```
Ara la modifiquem

```bash
export PATH=$PATH:/nou/directori
```

3. **Exemples pràctics:**
   - Mostrar el directori personal:
     ```bash
     echo "El teu directori personal és: $HOME"
     ```
   - Mostrar els directoris del `PATH`:
     ```bash
     echo "Els directoris del PATH són: $PATH"
     ```
## export

L'ordre export en Bash s'utilitza per convertir una variable de shell en una variable d'entorn. Això permet que estiga accessible no només al shell actual, sinó també a tots els processos fills o sub-shells que es generen a partir d'aquest shell.
