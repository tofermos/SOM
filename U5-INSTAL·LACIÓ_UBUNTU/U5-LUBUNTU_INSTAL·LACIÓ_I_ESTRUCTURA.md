---
title: U5. LUBUNTU. INSTAL·LACIÓ I ESTRUCTURA
author: "@tofermos 2024"
lang: "ca-ES"
papersize: A4
linestretch: 1.5
output:
  pdf_document:
    toc: true
    keep_tex: true
    latex_engine: xelatex
  html_document:
    toc: true
    toc_float: true
    toc_depth: 3
    df_print: paged
    number_sections: false
---

\newpage
\renewcommand\tablename{Tabla}


# 1. El sistema operatiu GNU/Linux. Estructura i característiques

## 1.1 El sistema operatiu GNU/Linux
- **GNU/Linux** és un sistema operatiu lliure i de codi obert.
- Basat en el nucli **Linux** i eines del projecte **GNU**.
- Escalable: pot ser utilitzat en dispositius menuts o grans servidors.

## 1.2 Estructura
1. **Nucli (Kernel)**:
   - Gestió de recursos: memòria, CPU, dispositius.
   - Per veure la versió:
     ```bash
     uname -r
     ```
   - Exemple de resultat: `5.15.0-83-generic`.

2. **Shell**:
   - Interfície que permet interactuar amb el sistema.
   - Exemples: **bash**, **sh**, **dash**.
  
  Els shells diponible sels tenim al fitxer /etc/shells
  
  ```bash
  cat /etc/shells
  ```
  

3. **Utilitats**:
   - Comandes bàsiques: `ls`, `cp`, `mv`.

4. **Aplicacions**:
   - Programes per a usuaris finals, com navegadors o editors.

5. **Sistema d’arxius**:
   - Estructura jeràrquica que comença a `/`.

# 1.3 Característiques
- **Lliure i obert**: Es pot modificar i distribuir.
- **Multiusuari**: Diversos usuaris alhora.
- **Multitasca**: Execució de múltiples processos.
- **Segur**: Model de permisos.
- **Portabilitat**: Funciona en diferents plataformes.

# 2. Evolució històrica
- **1991**: Linus Torvalds crea el nucli Linux.
- **1992**: Es llança com a programari lliure.
- **1994**: Primera versió estable (Linux 1.0).
- **Actualitat**: Moltes distribucions basades en Linux.

# 3. Distribucions
- Una distribució és una combinació del nucli, utilitats GNU, i altres programes.
- Exemples de distribucions:

  | **Distribució** | **Orientació**                      |
  |------------------|------------------------------------|
  | Ubuntu           | Usuaris nous, suport comunitari.  |
  | Debian           | Estable, per servidors.           |
  | Arch Linux       | Personalitzable, usuaris experts. |

# 4. Instal·lació de Ubuntu
1. Descarrega la imatge ISO des d'[ubuntu.com](https://ubuntu.com/).
2. Grava-la en un USB amb eines com **Ventoy** ( o Rufus, Etcher).
3. Arranca des del USB i segueix el procés d'instal·lació:
   - Idioma, fus horari, particions.
4. Inicia sessió després de la instal·lació.

# 4.1 Versió d'Ubuntu

Amb l'ordre: 
```bash
lsb_release -a
```
o llegintel fitxer de configuració
```bash
cat /etc/os-release
```

Una vegada més veiem com en un fitxer de text pla es guarda informació del sistema. En este cas:

* Nom del SO
* Distribució
* Versió

I el fitxer le manté una ordre: lsb_release

# 5. Entorn gràfic

## 5.1 Característiques dels gestors de finestres GNOME i KDE
| **Característica**    | **GNOME**                   | **KDE**                     |
|-----------------------|----------------------------|-----------------------------|
| **Disseny**           | Minimalista i senzill      | Personalitzable             |
| **Consum de recursos**| Relatiu alt                | Relatiu moderat             |
| **Eines pròpies**     | Nautilus, GNOME Terminal   | Dolphin, Konsole            |

## 5.2 Altres gestors de finestres
| **Gestor**  | **Característica**                      |
|-------------|----------------------------------------|
| **Fluxbox** | Lleuger i ràpid, minimalista.          |
| **LXDE**    | Lleuger, ideal per a equips antics.    |
| **Xfce**    | Equilibri entre lleugeresa i funcionalitat. |

## 5.3 Personalització de l’escriptori
- **Canviar fons de pantalla**:
  - Botó dret a l’escriptori → **Configuració del fons**.
- **Afegir ginys**:
  - Menú → **Ginys** o **Accessoris**.

## 5.4 Aplicacions
- Navegador web: **Firefox**.
- Suite ofimàtica: **LibreOffice**.
- Reproductor multimèdia: **VLC**.

Habitualment entenem per aplciacions les que són gràfiques però no hem d'oblidar que hi ha moltes eines que són aplicacions que s'executen en modeu CLI. ( apt, net-tools, nano, mdadm...).

## 5.5 Llocs

### Exploradors de fitxers
Un explorador de fitxers és l'eina gràfica que permet navegar pel sistema d'arxius. Cada entorn gràfic sol utilitzar un explorador diferent.

| **Explorador** | **Entorn associat** | **Característiques**                     | **Com instal·lar-lo**                     |
|----------------|----------------------|------------------------------------------|-------------------------------------------|
| **Nautilus**   | GNOME               | Senzill i integrat amb GNOME.            | `sudo apt install nautilus`               |
| **Thunar**     | Xfce                | Lleuger i ràpid.                         | `sudo apt install thunar`                 |
| **Dolphin**    | KDE                 | Altament personalitzable i complet.      | `sudo apt install dolphin`                |
| **Caja**       | MATE                | Similar a Nautilus, però amb opcions clàssiques.| `sudo apt install caja`                   |
| **PCManFM**    | LXDE                | Lleuger i senzill.                       | `sudo apt install pcmanfm`                |

### Seleccionar i canviar d'explorador
Pots instal·lar diversos exploradors i executar-los independentment, per exemple:
```bash
nautilus &
thunar &
```
- Configura el predeterminat editant la configuració del sistema o utilitzant eines com **xdg-mime**.

### Desinstal·lació d'exploradors
Si desitges eliminar un explorador de fitxers:
```bash
sudo apt remove <nom_explorador>
sudo apt autoremove
```
Per exemple, per eliminar **Caja**:
```bash
sudo apt remove caja
sudo apt autoremove
```

## 5.6 Preferències
- **Pantalla**: Resolució i configuració de monitors.
- **Ratolí i teclat**: Velocitat, mapes de tecles.
- Comanda per accedir:
  ```bash
  lxappearance
  ```

## 5.7 Administració
- Gestió d'usuaris:
  - Afegir un usuari:
    ```bash
    sudo adduser nom_usuari
    ```
  - Veure usuaris:
    ```bash
    cat /etc/passwd
    ```
- Gestió de processos:
  - Veure processos actius:
    ```bash
    top
    ```
- Gestió de paquets:
  - Actualitzar el sistema:
    ```bash
    sudo apt update && sudo apt upgrade
    ```

## 5.8 Instal·lació i desinstal·lació de diferents escriptoris

### Instal·lació d'escriptoris
Pots instal·lar escriptoris alternatius en Ubuntu utilitzant el gestor de paquets **apt**. Després d'instal·lar-los, pots seleccionar quin entorn utilitzar en la pantalla d'inici de sessió.

| **Escriptori** | **Com instal·lar-lo**                     | **Com accedir després d’instal·lar**             |
|-----------------|-------------------------------------------|--------------------------------------------------|
| **GNOME**       | `sudo apt install ubuntu-desktop`         | Tria **GNOME** a la pantalla d’inici de sessió. |
| **LXDE**        | `sudo apt install lubuntu-desktop`        | Tria **LXDE** a la pantalla d’inici de sessió.  |
| **Xfce**        | `sudo apt install xubuntu-desktop`        | Tria **Xfce** a la pantalla d’inici de sessió.  |
| **KDE/Plasma**  | `sudo apt install kubuntu-desktop`        | Tria **Plasma** a la pantalla d’inici de sessió. |
| **Fluxbox**     | `sudo apt install fluxbox`                | Tria **Fluxbox** a la pantalla d’inici de sessió. |

### Desinstal·lació d'escriptoris
Per desinstal·lar un escriptori, elimina els paquets associats. Assegura’t de no eliminar dependències crítiques del sistema.

1. **GNOME**:
   ```bash
   sudo apt remove ubuntu-desktop
   sudo apt autoremove
   ```
2. **LXDE**:
   ```bash
   sudo apt remove lubuntu-desktop
   sudo apt autoremove
   ```
3. **Xfce**:
   ```bash
   sudo apt remove xubuntu-desktop
   sudo apt autoremove
   ```
4. **KDE/Plasma**:
   ```bash
   sudo apt remove kubuntu-desktop
   sudo apt autoremove
   ```
5. **Fluxbox**:
   ```bash
   sudo apt remove fluxbox
   sudo apt autoremove
   ```

### Comprovar escriptoris instal·lats
- Llista els paquets instal·lats relacionats amb els entorns d'escriptori

:
  ```bash
  dpkg -l | grep desktop
  ```

### Selecció de l'escriptori predeterminat
- Si vols canviar l’escriptori predeterminat:
  1. Modifica la configuració de la pantalla d’inici de sessió.
  2. O selecciona’l manualment al moment d’iniciar sessió.
``` 

Aquesta versió completada integra tot el que necessites sobre instal·lació i desinstal·lació d'escriptoris i exploradors de fitxers, amb els passos corresponents per a un entorn Ubuntu. També he inclòs exemples per a cada acció amb les ordres necessàries.