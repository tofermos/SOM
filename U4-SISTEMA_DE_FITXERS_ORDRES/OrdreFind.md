
## Estructura bàsica de `find`

La sintaxi bàsica de `find` és la següent:

```bash
find [directori] [opcions] [expressió]
```

- **Directori**: Indica el directori de cerca (si és un punt `.` busca des de l'actual).
- **Opcions**: Defineixen la manera de buscar (per exemple, `-type`).
- **Expressió**: Condicions o criteris de cerca (com ara el nom o la mida).

## Opcions de búsqueda de `find`


```bash
find [directori] [condicions] -exec [ordre] {} \;
```

1. **`-name`** i **`-iname`**:
   - **`-name`**: Cerca fitxers o directoris amb un nom exacte (distingint majúscules de minúscules).
   - **`-iname`**: Igual que `-name`, però ignora majúscules/minúscules.

   ```bash
   find . -name "tomas.png"            # Troba exactament "tomas.png"
   find . -iname "tomas.png"           # Troba "tomas.png" o "TOMAS.PNG"
   find . -iname "*.pdf"               # Troba tots els arxius PDF
   ```

2. **`-type`**:
   - Defineix el tipus d'element que cerquem:
     - **`f`**: Fitxers.
     - **`d`**: Directoris.

   ```bash
   find . -type f -name "SMX.doc"      # Troba un fitxer amb nom exacte "SMX.doc"
   find . -type d -iname "tomas"       # Troba directoris amb nom "tomas" o "TOMAS"
   ```

3. **`-size`**:
   - Filtra per mida de fitxer. Es pot especificar en diferents unitats:
     - **`c`**: Bytes.
     - **`k`**: Kilobytes.
     - **`M`**: Megabytes.
     - **`G`**: Gigabytes.

   ```bash
   find . -size +1M                    # Troba fitxers de més d'1 MB
   find . -size -500k                  # Troba fitxers de menys de 500 KB
   ```

4. **`-mtime`** i **`-ctime`**:
   - **`-mtime`**: Troba fitxers modificats fa un cert nombre de dies.
   - **`-ctime`**: Troba fitxers canviats fa un cert nombre de dies.

   ```bash
   find . -mtime -7                    # Troba fitxers modificats en els últims 7 dies
   find . -ctime +30                   # Troba fitxers canviats fa més de 30 dies
   ```

5. **`-user`** i **`-group`**:
   - **`-user`**: Cerca fitxers propietat d'un usuari específic.
   - **`-group`**: Cerca fitxers d'un grup específic.

   ```bash
   find . -user tomas                  # Troba fitxers propietat de l'usuari "tomas"
   find . -group smx                   # Troba fitxers que pertanyen al grup "smx"
   ```

6. Limitar la profunditat de la cerca (-maxdepth i -mindepth)

    -maxdepth: Defineix la profunditat màxima de la cerca dins de subdirectoris.
    -mindepth: Defineix la profunditat mínima per iniciar la cerca.

```bash
find . -maxdepth 1 -name "*.png"      # Cerca arxius PNG només al directori actual
find . -maxdepth 2 -iname "*.jpg"     # Cerca arxius JPG fins a dos nivells de subdirectoris
find . -mindepth 2 -type f -name "*.pdf"  # Cerca arxius PDF a partir del segon nivell
```

7. **`-or`** i **`-and`**:
   - Permet combinar condicions de cerca.

   ```bash
   find . -iname "*.png" -or -iname "*.jpg"  # Troba arxius amb extensió ".png" o ".jpg"
   find . -type f -name "tomas.*" -and -size +1M  # Troba arxius amb "tomas" de més d'1 MB
   ```


## Execució d'ordres amb el resultat


### Ús del -exec


7.**`-exec`**:
   - Executa una ordre per a cada fitxer trobat. L'ordre ha d'anar seguida de `\;`.

```bash
find [directori] [condicions] -ok [ordre] {} \;
```
> Aclariments:
> El {} substueix el resultat de la búsqueda
> Heu de fixar-vos bé en els espais. *espai{}espai\;*

```bash
   find . -iname "*.jpg" -exec rm {} \;  # Elimina tots els fitxers ".jpg"
   find . -type f -name "*.csv" -exec mv {} /destinacio/ \;  # Mou els ".csv" a "/destinacio"
```

---


## Ús de `-ok`

L'opció **`-ok`** és similar a `-exec`, però demana **confirmació a l'usuari abans d'executar** l'ordre per a cada fitxer o directori trobat. Això és útil quan vols estar segur que no s'executarà una acció accidentalment sobre els fitxers trobats.

### Sintaxi

```bash
find [directori] [condicions] -ok [ordre] {} \;
```

- Igual que amb `-exec`, el símbol `{}` representa cada fitxer o directori que compleix les condicions de cerca.
- Finalitza l’ordre amb `\;`.
- Amb `-ok`, el sistema demanarà confirmació (`y` o `n`) per a cada fitxer abans d'executar l'ordre.

### Exemples d'ús de `-ok`

1. **Eliminar fitxers amb confirmació**

   Suposem que vols eliminar fitxers `.tmp` dins del directori actual, però vols confirmar abans d'eliminar cada fitxer:

   ```bash
   find . -iname "*.tmp" -ok rm {} \;
   ```

   El sistema demanarà:
   
   ```
   < rm ... /nom_del_fitxer >? y
   ```

2. **Copiar fitxers amb confirmació**

   Vols copiar fitxers `.jpg` de més de 1 MB a un altre directori, però vols confirmar cada acció:

   ```bash
   find . -type f -iname "*.jpg" -size +1M -ok cp {} /directori_destinacio/ \;
   ```

   Cada cop que trobi un fitxer que compleixi les condicions, `find` et preguntarà si vols copiar-lo.

3. **Moure fitxers d'una extensió específica**

   Suposem que vols moure fitxers `.doc` a un directori d'arxiu, però vols confirmar cada acció abans de moure el fitxer:

   ```bash
   find . -type f -iname "*.doc" -ok mv {} /directori_arxiu/ \;
   ```

4. **Executar scripts en fitxers trobats**

   Suposem que tens un script que vols executar sobre cada fitxer `.csv` en un directori concret, però amb confirmació:

   ```bash
   find /directori -type f -iname "*.csv" -ok ./script.sh {} \;
   ```
Aquí tens una guia completa sobre l'ordre `locate`, incloent-hi la diferència principal amb `find` i diversos exemples d'ús per a localitzar fitxers de manera ràpida i eficient.

---

## Diferència entre `find` i `locate`

### `find`

- **Cerca en temps real**: `find` recorre el sistema de fitxers en temps real per trobar els fitxers o directoris que compleixen els criteris especificats.
- **Flexible però més lent**: `find` és molt potent i permet filtres avançats (nom, tipus, mida, data, etc.), però pot ser lent si la cerca es fa en grans directoris perquè ha de revisar tots els fitxers.
- **Exemple**:
  ```bash
  find / -name "exemple.txt"           # Cerca "exemple.txt" a partir de la ruta arrel, en temps real.
  ```

### `locate`

- **Ús d’una base de dades**: `locate` és molt ràpid perquè no busca en temps real, sinó que utilitza una base de dades (`mlocate.db`) que conté la ubicació dels fitxers del sistema.
- **Ràpid però pot no estar actualitzat**: Com que es basa en una base de dades que s’actualitza periòdicament, `locate` pot no trobar fitxers recents o eliminats si la base de dades no està actualitzada.
- **Actualització de la base de dades**: Per assegurar una cerca actualitzada, cal executar manualment el comandament `updatedb` (requereix permisos d’administrador) per actualitzar la base de dades.
- **Exemple**:
  ```bash
  locate exemple.txt                    # Cerca ràpidament "exemple.txt" a la base de dades.
  ```

---

## Ús bàsic de `locate`

1. **Cerca un fitxer pel seu nom**
   ```bash
   locate exemple.txt                  # Mostra totes les ubicacions del fitxer "exemple.txt".
   ```

2. **Cerca per part del nom**
   ```bash
   locate exemple                      # Mostra tots els fitxers i directoris que contenen "exemple" en el nom.
   ```

---

## Opcions útils de `locate`

### 1. Limitar el nombre de resultats (`-n`)

   - Limita el nombre de resultats retornats.
   ```bash
   locate -n 5 exemple                 # Mostra només els primers 5 resultats.
   ```

### 2. Cerca insensible a majúscules/minúscules (`-i`)

   - Ignora si les lletres són majúscules o minúscules durant la cerca.
   ```bash
   locate -i exemple                    # Cerca "exemple" sense distingir majúscules o minúscules.
   ```

### 3. Usar expressions regulars (`locate | grep`)

   - `locate` no té suport nadiu per expressions regulars, però podem utilitzar `grep` per filtrar els resultats.
   ```bash
   locate .png | grep -E 'SMX|tomas'   # Cerca fitxers PNG amb "SMX" o "tomas" en el nom.
   ```

### 4. Excloure resultats que continguin una paraula específica (`grep -v`)

   - Es poden excloure resultats usant `grep -v`.
   ```bash
   locate exemple | grep -v "backup"   # Cerca fitxers amb "exemple" en el nom, excloent els que continguin "backup".
   ```

### 5. Actualitzar la base de dades (`updatedb`)

   - Com que `locate` depèn d’una base de dades, aquesta es pot actualitzar manualment amb el comandament `updatedb`. Requereix permisos d’administrador (`sudo`).
   ```bash
   sudo updatedb                       # Actualitza la base de dades per a una cerca actualitzada.
   ```

---

## Exemples combinats de `locate`

1. **Cerca fitxers PDF que continguin "tomas" al nom, sense distingir majúscules/minúscules**
   ```bash
   locate -i tomas.pdf
   ```

2. **Cerca qualsevol fitxer amb "SMX" en el nom i mostra només els primers 10 resultats**
   ```bash
   locate -n 10 SMX
   ```

3. **Cerca fitxers amb extensió `.doc` o `.jpg` i ignora majúscules**
   ```bash
   locate -i ".doc" | grep -E ".doc$|.jpg$"
   ```

4. **Excloure resultats d'un directori específic**
   ```bash
   locate tomas | grep -v "/backup"    # Exclou resultats que continguin "/backup" al camí.
   ```

5. **Combinació amb `find` per resultats actualitzats en directoris específics**

   Si `locate` no troba resultats per un fitxer recent, pots usar `find` per buscar en temps real només en directoris específics.

   ```bash
   locate tomas || find /home -iname "tomas.*"
   ```
---


## Diferència entre `find` i `locate`

### `find`

- **Cerca en temps real**: `find` recorre el sistema de fitxers en temps real per trobar els fitxers o directoris que compleixen els criteris especificats.
- **Flexible però més lent**: `find` permet filtres avançats (nom, tipus, mida, data, etc.), però pot ser lent en directoris grans perquè ha de revisar tots els fitxers.
- **Exemple**:
  ```bash
  find / -name "tomas.txt"           # Cerca "tomas.txt" des de la ruta arrel en temps real.
  ```

### `locate`

- **Ús d’una base de dades**: `locate` és molt ràpid perquè utilitza una base de dades (`mlocate.db`) que conté la ubicació dels fitxers del sistema.
- **Ràpid però pot no estar actualitzat**: `locate` pot no trobar fitxers creats o eliminats recentment si la base de dades no està actualitzada.
- **Actualització de la base de dades**: Per assegurar una cerca actualitzada, cal executar `updatedb` manualment (requereix permisos d’administrador).
- **Exemple**:
  ```bash
  locate tomas.txt                    # Cerca ràpidament "tomas.txt" a la base de dades.
  ```

---

## Ús bàsic de `locate`

1. **Cerca un fitxer pel seu nom**
   ```bash
   locate marienriquez.doc             # Mostra totes les ubicacions del fitxer "marienriquez.doc".
   ```

2. **Cerca per part del nom**
```bash
locate smx                          # Mostra tots els fitxers i directoris que contenen "smx" en el nom.
```

---

## Opcions útils de `locate`

### 1. Limitar el nombre de resultats (`-n`)

- Limita el nombre de resultats que `locate` retorna.
```bash
locate -n 5 tomas                  # Mostra només els primers 5 resultats.
```

### 2. Cerca insensible a majúscules/minúscules (`-i`)

- Cerca sense diferenciar entre majúscules i minúscules.
```bash
locate -i smx                        # Cerca "smx" sense distingir majúscules o minúscules.
```

### 3. Usar expressions regulars (`locate | grep`)

- `locate` no suporta expressions regulars directament, però es pot utilitzar `grep` per filtrar els resultats.
```bash
locate .pdf | grep -E 'tomas|marienriquez'  # Cerca fitxers PDF amb "tomas" o "marienriquez" en el nom.
```

### 4. Excloure resultats amb una paraula específica (`grep -v`)

- Exclou resultats amb `grep -v`.
```bash
locate smx | grep -v "backup"        # Cerca "smx" i exclou els resultats que continguin "backup".
```

### 5. Actualitzar la base de dades (`updatedb`)

- Com que `locate` depèn d’una base de dades, aquesta es pot actualitzar manualment amb `updatedb` (requereix permisos d’administrador).

```bash
sudo updatedb                       # Actualitza la base de dades per a una cerca actualitzada.
```

---

## Exemples combinats de `locate`

1. **Cerca fitxers PDF que continguin "marienriquez" al nom, sense distingir majúscules/minúscules**
   ```bash
   locate -i marienriquez.pdf
   ```

2. **Cerca qualsevol fitxer amb "smx" en el nom i mostra només els primers 10 resultats**
   ```bash
   locate -n 10 smx
   ```

3. **Cerca fitxers amb extensió `.doc` o `.jpg` sense distingir majúscules**
   ```bash
   locate -i ".doc" | grep -E ".doc$|.jpg$"
   ```

4. **Excloure resultats d'un directori específic**
   ```bash
   locate tomas | grep -v "/backup"    # Exclou resultats que continguin "/backup" al camí.
   ```

5. **Combinació amb `find` per a resultats actualitzats en directoris específics**

   Si `locate` no troba resultats per un fitxer recent, pots usar `find` per buscar en temps real només en directoris específics.

   ```bash
   locate tomas || find /home -iname "tomas.*"
   ```

Amb aquestes opcions, `locate` et permet fer cerques ràpides i eficients, especialment útil quan vols trobar fitxers sense fer una cerca exhaustiva com la que ofereix `find`.
