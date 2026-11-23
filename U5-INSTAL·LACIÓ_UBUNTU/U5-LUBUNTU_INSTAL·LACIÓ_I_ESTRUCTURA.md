---
title: U5. LUBUNTU. INSTAL·LACIÓ I ESTRUCTURA
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
  
  Els shells diponible els tenim al fitxer /etc/shells
  
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
o llegint el fitxer de configuració
```bash
cat /etc/os-release
```

Una vegada més veiem com en un fitxer de text pla es guarda informació del sistema. En este cas:

* Nom del SO
* Distribució
* Versió

I el fitxer le manté una ordre: lsb_release

# 5. Entorn gràfic
## 5.1 Instal·lació i desinstal·lació de diferents escriptoris

### Instal·lació d'escriptoris
Pots instal·lar escriptoris alternatius en Ubuntu utilitzant el gestor de paquets **apt**. Després d'instal·lar-los, pots seleccionar quin entorn utilitzar en la pantalla d'inici de sessió.

| **Escriptori** | **Com instal·lar-lo**                     | 
|-----------------|-------------------------------------------|
| **GNOME**       | `sudo apt install task-gnome-desktop`      |
| **LXQt**        | `sudo apt install task-lxqt-desktop`       |
| **Xfce**        | `sudo apt install task-xfce-desktop`       |
| **KDE/Plasma**  | `sudo apt install task-kfce-desktop`       |
| **Cinnamon**   | `sudo apt install task-cinnamon-desktop`  | 
| **MATE**   | `sudo apt install task-mate-desktop`  | 
| **LXDE**   | `sudo apt install task-lxde-desktop`  |


### Comprovar escriptoris instal·lats

Llista els paquets instal·lats relacionats amb els entorns d'escriptori

  ```bash
  dpkg -l | grep desktop
  ```

### Desinstal·lació d'escriptoris

Per desinstal·lar un escriptori, elimina els paquets associats. Assegura’t de no eliminar dependències crítiques del sistema.

**Exemple**

```bash
   sudo apt remove task-gnome-desktop
   sudo apt autoremove
   ```

## 5.2 Exploradors de fitxers
Un explorador de fitxers és l'eina gràfica que permet navegar pel sistema d'arxius. Cada entorn gràfic sol utilitzar un 
explorador que té associat però podem instal·lar altres, desinstal·lar i canviar.

| **Explorador** | **Entorn associat** | **Característiques**                     | **Com instal·lar-lo**                     |
|----------------|----------------------|------------------------------------------|-------------------------------------------|
| **Nautilus**   | GNOME               | Senzill i integrat amb GNOME.            | `sudo apt install nautilus`               |
| **Thunar**     | Xfce                | Lleuger i ràpid.                         | `sudo apt install thunar`                 |
| **Dolphin**    | KDE                 | Altament personalitzable i complet.      | `sudo apt install dolphin`                |
| **Caja**       | MATE                | Similar a Nautilus, però amb opcions clàssiques.| `sudo apt install caja`                   |
| **PCManFM**    | LXDE                | Lleuger i senzill.                       | `sudo apt install pcmanfm`                |

### Desinstal·lació d'exploradors

Per exemple, per eliminar **Caja**:
```bash
sudo apt remove caja
sudo apt autoremove
```

# 5.3 Gestor de finestres

|**Gestor de finestres**||
|:--|-----|
|Openbox|`sudo apt install xorg openbox xinit`|
|IceWM|`sudo apt install xorg xinit icewn`|
|Fluxbox|`sudo apt install xorg xinit fluxbox`|
|i3|`sudo apt install xorg xinit i3-wm`|

