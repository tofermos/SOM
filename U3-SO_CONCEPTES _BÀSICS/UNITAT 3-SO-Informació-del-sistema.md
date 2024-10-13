---
title: U3. INFORMACIÓ DEL SISTEMA
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

# 1 Software de sistema

## 1.1. Versió del sistema operatiu Linux (Ubuntu)

Per conèixer la versió d'Ubuntu que estàs utilitzant, utilitza una de les següents ordres:

```bash
lsb_release -a
```

O també:

```bash
cat /etc/os-release
```

## 1.2. Versió del nucli (Kernel)
Per veure la versió del nucli de Linux, pots utilitzar l'ordre:

```bash
uname -r
```

## 1.3. Versió de l'entorn d'escriptori
Depenent de l'entorn d'escriptori que utilitzes, pots utilitzar aquestes ordres per veure'n la versió:

- Gnome:
  ```bash
  gnome-shell --version
  ```
- KDE Plasma:
  ```bash
  plasmashell --version
  ```
- LXQt:
  ```bash
  lxqt-session --version
  ```
- Mate:
  ```bash
  mate-about --version
  ```
- Cinnamon (Mint):
  ```bash
  cinnamon --version
  ```

# 2 Hardware

## 2.1. CPU (Processador)
Per veure informació sobre la CPU, pots utilitzar:

```bash
lscpu
```

## 2.2. Memòria RAM i Swap
Per veure l'estat de la memòria RAM i la Swap:

```bash
free -h
```

## 2.3. Memòria secundària (discos durs)
Per veure informació sobre els discos durs i les particions, utilitza:

```bash
lsblk
```

O bé:

```bash
df -h
```

## 2.4. Dispositius USB
Per veure els dispositius USB connectats al sistema:

```bash
lsusb
```

## 2.5. Monitor
Per veure informació sobre el monitor, com la resolució o configuració de la pantalla:

```bash
xrandr
```

## 2.6. NIC (Targeta de xarxa)
Per obtenir informació sobre la targeta de xarxa (NIC):

```bash
ip a
```

O bé:

```bash
lshw -C network
```

# 3 Configuració

## 3.1. Idioma, teclat i regió
Per veure informació sobre la configuració d'idioma i regió, pots utilitzar:

```bash
localectl
```

Per veure la configuració del teclat:

```bash
setxkbmap -print -verbose 10
```

