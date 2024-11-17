---
title: U4. Sistema de fitxers. Ubuntu (III)
subtitle: TRACTAMENT DE TEXT (I)
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

```{=tex}
\newpage
\renewcommand\tablename{Tabla}
```
# Resum

En esta pràctica usaràs ordres de tractament de text per averiguar qui ha iniciat sessió en el teu PC.
Coneixerem una ordre nova interessant (*last*)

# 1 Consultem el inicis de sessió 


L'ordre *last* treu els inicis i tancaments de la màquina. Llig de diversos arxius del sistema on es guarden els inicis de sessió (i intents) de tot tipus.

```bash
last
```

***Proveu-la**

## 1.1  Tractem l'eixida amb...


Com faríeu per vore les línies superiors que corresponen a les últimes vegades que hem iniciat la màquina?

**Com?** _______

Es tracta de vore les primeres línies. Més o menys...

```bash
tomas    :0           :0               Thu Nov 14 12:10   still logged in
reboot   system boot  6.8.0-48-generic Thu Nov 14 12:09   still running
tomas    :0           :0               Thu Nov 14 12:05 - down   (00:03)
reboot   system boot  6.8.0-48-generic Thu Nov 14 12:04 - 12:09  (00:04)
tomas    :0           :0               Thu Nov 14 11:51 - down   (00:11)
reboot   system boot  6.8.0-48-generic Thu Nov 14 11:51 - 12:03  (00:12)
tomas    :0           :0               Thu Nov 14 11:50 - 11:51  (00:00)
reboot   system boot  6.8.0-48-generic Thu Nov 14 11:50 - 11:51  (00:01)
tomas    :0           :0               Thu Nov 14 10:21 - down   (01:26)
reboot   system boot  6.8.0-48-generic Thu Nov 14 10:19 - 11:48  (01:28)
```


# 2.Provem distintes formes d'apagar el PC

Anem a apagar i inciar (reiniciar) la màquina virtual de distinties formes.

## 1. poweroff

### 1.1 Apaga la màquina virtual amb l'ordre poweroff
 
```bash
poweroff
```
### 1.2 Inicia la màquina, prova *last* i fixa't en la "columna" de la dreta...
( usa last amb head)

## 2 suhtdown

### 2.1 Apaga la màquina amb l'ordre shutdown

```bash
shutdown 
```

Amb esta podem espcificar un temps, agegint per exemple "h 3", tardaria 3 minuts més. 
```bash
shutdown -h 3
```

### 2.2 Inicia la màquina, prova *last* i fixa't en la "columna" de la dreta...
( usa last amb head)

## 3 reboot: També podem apagar i iniciar a l'hora (reiniciar)

### 3.1 Reinicia la màquina amb l'ordre reboot

Ara reinia'l amb 
```bash
reboot
```

### 3.2 Inicia la màquina, prova *last* i fixa't en la "columna" de la dreta...
( usa last amb head)


## 4 Des del GUI

### 4.1 Apagar des del GUI

Apaga i consulta amb *last* igual que has fet adés.

### 4.2 Reinicia des del GUI
Reinicia des del GUI i comprova amb *last*.

# 3 Tasca final

Ja has pogut observar com es registren i consulten els inicis i tancaments del PC amb **last**. 
Ara,  es tracta de concatenar esta ordre i les que coneixes per a tractar textos. Amb això ja pots investigar en un SO Monolloc Linux quins usuaris s'han connectat a la teua màquina i durant quant de temps.

Tasca a fer:

a. Averigua l'usuari *nom* quantes vegades s'ha connectat a la màquina virtual en el mes de **Sep**tembre.

b. Averigua, també d'estes, quantes ha finalitzat la sessió des de l'entorn gràfic.


**Ajuda:**

* Amb **grep ^text_buscar** trobem línies que comencen per *text_a_buscar*
* Amb **grep -v **text_no_buscar** trobem línies que NO contenen el *text_a_no_buscar*
* Amb **head** traiem les primeres files.
* Amb **wc -l** comptem línies ( encara que el grep té l'opció -c)






