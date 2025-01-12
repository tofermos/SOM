---
title: |
  | U7- ADMINISTRACIÓ D'UBUNTU
subtitle: |
  |  BUCLES EN ELS SCRIPTS
author: "Tomàs Ferrandis Moscardó"
output:
  html_document:
    toc: false
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

En Bash, els bucles **`for`** i **`for ... in`** són essencialment dues formes del mateix concepte. No obstant això, la seva sintaxi i ús poden diferir lleugerament segons el context.


# **El bucle `for` en Bash**

## **1. `for ... in`**
Aquest és el mètode més comú i flexible per fer un bucle `for` a Bash. Permet iterar sobre una llista explícita, una seqüència numèrica o el resultat d'una comanda.

### **Sintaxi**:
```bash
for variable in valor1 valor2 valor3; do
    # Accions amb la variable
done
```

### **Exemples**:

#### Iterar sobre una llista fixa:
```bash
#!/bin/bash
for fruita in poma taronja raïm; do
    echo "M'agrada la $fruita!"
done
```
**Sortida:**
```
M'agrada la poma!
M'agrada la taronja!
M'agrada la raïm!
```

#### Iterar sobre una seqüència de números:
```bash
#!/bin/bash
for num in {1..5}; do
    echo "Número: $num"
done
```
**Sortida:**
```
Número: 1
Número: 2
Número: 3
Número: 4
Número: 5
```

#### Iterar sobre resultats d'una comanda:
```bash
#!/bin/bash
for fitxer in $(ls *.txt); do
    echo "Fitxer de text: $fitxer"
done
```
**Sortida (depèn del sistema):**
```
Fitxer de text: document1.txt
Fitxer de text: llista.txt
Fitxer de text: notes.txt
```

---

## **2. `for` (sense `in`)**
Quan no es proporciona cap llista després del `for`, Bash assumeix una seqüència implícita (`{1..N}` o una seqüència numèrica generada d'altres maneres). Aquest mètode s'utilitza principalment en combinació amb `C-style for loops`.

### **Sintaxi**:
```bash
for (( inicialització; condició; increment )); do
    # Accions dins del bucle
done
```

### **Exemple**:

#### Bucles d'estil C:
```bash
#!/bin/bash
for (( i=1; i<=5; i++ )); do
    echo "Número: $i"
done
```
**Sortida:**
```
Número: 1
Número: 2
Número: 3
Número: 4
Número: 5
```

---

# **Comparació entre `for` i `for ... in`**

| Característica             | `for ... in`                                   | `for` (estil C)                          |
|----------------------------|-----------------------------------------------|------------------------------------------|
| **Iteració explícita**     | Itera sobre una llista o seqüència donada.    | Control total sobre inicialització i increment. |
| **Usos comuns**            | Treballar amb llistes o sortides de comandes. | Bucle numèric controlat manualment.      |
| **Simplicitat**            | Més senzill i llegible per llistes.           | Més complex, però més flexible en casos numèrics. |
| **Exemple típic**          | `for item in a b c; do ... done`              | `for (( i=1; i<=10; i++ )); do ... done` |

---

# **Quan utilitzar cada tipus?**
- **`for ... in`**:
  - Ideal per treballar amb llistes definides o resultats de comandes.
  - Exemple: Processar fitxers, iterar sobre paraules, etc.
- **`for` (estil C)**:
  - Ideal per a bucles numèrics o quan necessites més control sobre les condicions d'inici, finalització i increment.

Si tens més dubtes o necessites més exemples, avisa'm! 😊