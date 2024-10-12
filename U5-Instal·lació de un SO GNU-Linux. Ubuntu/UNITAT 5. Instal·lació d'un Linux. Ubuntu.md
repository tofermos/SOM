---
title: U5. Instal·lació de un SO GNU/Linux. Ubuntu
subtitle:  Instal·larem un Lubuntu
author: by tofermos
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
---
# UNITAT 5. Instal·lació d'un SO GNU/Linux: Ubuntu
**Duració estimada: 8-10 hores**

---

### Introducció
En aquesta unitat ens enfocarem en el sistema operatiu GNU/Linux, explorant la seva estructura, característiques i evolució històrica. Treballarem amb una de les distribucions més populars, Ubuntu, i aprendrem a instal·lar-lo i personalitzar-lo, així com a gestionar l'entorn gràfic i les principals eines d'administració del sistema.

---

### 1. El sistema operatiu GNU/Linux. Estructura i característiques
**Duració: 1 hora**

#### 1.1 El sistema operatiu GNU/Linux

- Definició: Un sistema operatiu és el conjunt de programes que gestionen els recursos d'un ordinador (memòria, processador, dispositius d'entrada/sortida) i proporcionen un entorn per a executar altres aplicacions.
  
- Conceptes bàsics de GNU/Linux: 
  - GNU/Linux és un sistema operatiu de codi obert que combina el nucli Linux (creat per Linus Torvalds) amb altres components del projecte GNU, iniciat per Richard Stallman.
  - A diferència d'altres sistemes operatius com Windows o macOS, GNU/Linux és gratuït i permet als usuaris modificar i redistribuir el seu codi font.

- Funcions bàsiques: 
  - Gestió de processos i memòria.
  - Administració del sistema de fitxers.
  - Control dels dispositius de maquinari.

#### 1.2 Estructura

- Nucli (Kernel): És el cor del sistema operatiu, s'encarrega de gestionar els recursos de l'ordinador i permet que el programari i el maquinari col·laborin. És responsable de tasques com la gestió de memòria, processos, dispositius i fitxers.

- Shell: És la interfície que permet a l'usuari interactuar amb el sistema operatiu. Hi ha diferents tipus de shells, com el bash, que s'utilitza comunament a GNU/Linux.

- Sistema de fitxers: GNU/Linux utilitza una estructura jeràrquica de directoris on tot (fitxers, carpetes, dispositius) es representa com a fitxers. Els sistemes de fitxers més utilitzats són ext4, XFS i Btrfs.

#### 1.3 Característiques

- Lliure i de codi obert: GNU/Linux està disponible sota llicències de programari lliure, com la GPL (General Public License), la qual permet a qualsevol utilitzar, modificar i redistribuir el sistema.
  
- Multitasca i multiusuari: És capaç de gestionar múltiples processos al mateix temps i permet que diferents usuaris accedeixin al sistema simultàniament amb diferents privilegis.

- Seguretat i estabilitat: És conegut per ser un sistema robust amb altes mesures de seguretat integrades i gran resistència davant fallades.

- Personalització: Es pot personalitzar a un alt nivell, des de l'entorn gràfic fins a la configuració del nucli.

---

### 2. Evolució històrica
**Duració: 1 hora**

- Origen de Unix: Desenvolupat als anys 70 per AT&T, Unix va establir les bases per als futurs sistemes operatius multitarea i multiusuari. La seva arquitectura modular va influir en GNU/Linux.

- GNU i el programari lliure: Richard Stallman va iniciar el projecte GNU el 1983 per crear un sistema operatiu completament lliure. El projecte GNU incloïa eines i aplicacions però li faltava un nucli.

- Naixement de Linux: El 1991, Linus Torvalds va desenvolupar el nucli Linux com a projecte personal, que es va combinar amb els components del projecte GNU per crear el sistema GNU/Linux.

- Crecement i popularització: Al llarg dels anys, moltes distribucions de GNU/Linux van emergir, com Slackware, Debian i més tard Ubuntu, que es va fer popular per la seva facilitat d’ús.

---

### 3. Distribucions
**Duració: 1 hora**

- Distribució (distro): És una versió del sistema operatiu GNU/Linux que combina el nucli Linux amb altres programes (com gestors de paquets, interfícies gràfiques, etc.). Les distribucions varien segons les necessitats dels seus usuaris (servidors, escriptori, seguretat, etc.).

- Distribucions populars:
  - Ubuntu: Popular entre els usuaris domèstics i en entorns educatius per la seva senzillesa.
  - Debian: Estable i segura, molt utilitzada en servidors.
  - Fedora: Patrocinada per Red Hat, enfocada a la innovació i novetats.
  - Arch Linux: Minimalista i personalitzable, però complexa per a principiants.
  - CentOS: Versió gratuïta de Red Hat Enterprise Linux (RHEL), ideal per a servidors.

- Comparativa: Es pot analitzar cada distribució segons l’objectiu, comunitat de suport, estabilitat i facilitat d'ús.

---

### 4. Instal·lació d'Ubuntu
**Duració: 2 hores**

- Descàrrega de la imatge ISO: Des del lloc oficial d’Ubuntu (ubuntu.com), s'ha de descarregar la versió adequada per a l'arquitectura del sistema (32 o 64 bits).

- Preparació del medi d'instal·lació:
  - Crear un USB bootable utilitzant eines com Rufus o Etcher.
  
- Configuració de la BIOS o UEFI:
  - Accedir a la configuració de la BIOS i habilitar l'inici des del dispositiu d'instal·lació (USB o DVD).

- Procés d'instal·lació:
  - Elecció de l’idioma: Seleccionar l'idioma per a la instal·lació i l'ús del sistema.
  - Particionament del disc: Triar entre instal·lar Ubuntu com a únic sistema o en dual-boot amb altres sistemes.
  - Configuració d'usuari i contrasenya: Definir el nom de l'usuari i la contrasenya que s'utilitzarà per accedir al sistema.
  - Actualitzacions i paquets addicionals: Opcions per descarregar actualitzacions durant la instal·lació i instal·lar programari addicional com còdecs multimèdia.

- Resolució de problemes: En cas de problemes, com errors de particionament o dispositius no detectats, es poden consultar les opcions de recuperació o fer ús del mode en viu (live session).

---

### 5. Entorn gràfic
**Duració: 3 hores**

#### 5.1 Característiques dels gestors de finestres GNOME i KDE

- GNOME: Gestor de finestres per defecte a Ubuntu. Enfocat en la senzillesa i l'usabilitat. Proporciona una interfície minimalista i fluida.
  
- KDE: Conegut pel seu alt nivell de personalització. A diferència de GNOME, KDE Plasma permet una configuració detallada de l'escriptori i les aplicacions.

- Comparativa:
  - GNOME: Més simple i directe, adequat per a principiants.
  - KDE: Més flexible i personalitzable, però requereix més recursos.

#### 5.2 Altres gestors de finestres; Fluxbox, LXDE, Xfce…

- Fluxbox: Molt lleuger i minimalista. Ideal per a ordinadors amb poc rendiment.
  
- LXDE: Lleuger, enfocat a la simplicitat i l'eficiència en recursos.
  
- Xfce: Una opció equilibrada entre funcionalitat i lleugeresa.

#### 5.3 Personalització de l’escriptori

- Canvi de temes i icones.
- Configuració de fons de pantalla i efectes visuals.
- Afegir widgets i extensions per millorar la funcionalitat.

#### 5.4 Aplicacions

- Ubuntu inclou per defecte aplicacions com LibreOffice (suite ofimàtica), Firefox (navegador web), Rhythmbox (reproductor de música), i GIMP (editor d'imatges).
  
- Instal·lació de noves aplicacions a través de la línia de comandes amb APT (Advanced Packaging Tool) o mitjançant el Centre de Programari d'Ubuntu.

#### 5.5 Llocs

- Exploració del sistema de fitxers amb Nautilus (gestor de fitxers de GNOME) o Dolphin (KDE).
- Gestionar carpetes i fitxers: Crear, copiar, moure i esborrar fitxers.

#### 5.6 Preferències

- Configuració d’opcions bàsiques com data i hora, llengua, regió i preferències de teclat.
  
- Gestió d'usuaris: Afegir nous usuaris, canviar contrasenyes i gestionar grups d'usuaris.

#### 5.7 Administració

- Eines d'administració: Utilitzar el terminal per a tasques avançades (com instal·lar paquets o modificar fitxers de configuració).
  
- Sudo: Accedir als privilegis de superusuari per realitzar canvis al sistema.
  


- Gestió de processos: Controlar els processos en execució, iniciar o aturar serveis, i controlar l'ús de la memòria i la CPU.

---

### Activitats complementàries
- Pràctiques:
  - Instal·lació d’Ubuntu en una màquina virtual o física.
  - Personalització del gestor de finestres i escriptori.
  - Instal·lació d’aplicacions mitjançant APT.
  - Gestió d’usuaris i permisos.
  
- Avaluació:
  - Qüestionaris sobre la història i estructura de GNU/Linux.
  - Exercicis pràctics d’instal·lació i configuració.
  - Resolució de problemes d'instal·lació i ús bàsic d'administració.