---
title: | 
  | U8 Tipus d'instal·lacions i consideracions prèvies
subtitle: |
  | Informació sobre la instal·lació
Author: "Tomàs Ferrandis Moscardó"
output:
  pdf_document: 
    toc: true
    keep_tex: true
    toc_depth: 2
  html_document:
    toc: true
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
\newpage
\renewcommand\tablename{Tabla}

---

# 1 Tipus d’instal·lacions  

- Instal·lació neta: Esborra tot el disc i instal·la el sistema des de zero.  

- Actualització des de Windows 10: Conserva dades i programes.  

- Instal·lació en màquina virtual: Per provar Windows 11 sense modificar el sistema actual. ( La que fem en VirtualBox) 

- Instal·lació en un altre disc o partició: Per tenir Windows 11 al costat d'un altre sistema operatiu (dual boot: si volem en un PC tindre Windows 11 i Linux, per exemple)

# 2. Consideracions prèvies abans de la instal·lació  

- Verificar compatibilitat del hardware ( maquinari) amb la ferramenta PC Health Check de Microsoft.

- Fer una còpia de seguretat de les dades per evitar pèrdues.  

- Assegurar-se que el BIOS/UEFI està configurat correctament (Secure Boot i TPM activats).  

- Decidir quin tipus d'instal·lació fer: neta, actualització o màquina virtual.  

- Disposar d'una connexió a internet estable per descarregar actualitzacions i controladors.  

# 3. Instal·lació manual de Windows 11  

**Este apartat 3 NO CAL estudiar-lo perquè estem veient com fer-ho amb VENTOY**

1. Descarregar l'eina de creació de suports de Microsoft (Media Creation Tool).  

2. Crear un USB d’instal·lació (mínim 8 GB) amb l'eina o mitjançant Rufus.  

3. Accedir a la BIOS/UEFI i configurar l'ordre d'arrencada perquè el PC iniciï des del USB.  

4. Iniciar l’instal·lador i seguir els passos:  
   - Seleccionar idioma i configuració regional.  
   - Triar "Instal·lació personalitzada" per fer una instal·lació neta.  
   - Esborrar particions antigues (opcional) i instal·lar Windows 11 en l'espai lliure.  
5. Finalitzar la instal·lació i configurar el compte d'usuari.  

---

# 4. Actualització del sistema operatiu  

Si tens Windows 10 i el teu dispositiu és compatible, pots actualitzar-lo sense perdre dades.  

## Mètodes d'actualització  

- Via Windows Update:  

  - Anar a Configuració → Actualització i seguretat → Windows Update.  

  - Si apareix l'opció d'actualitzar a Windows 11, seguir les instruccions.  

- Amb l'Assistent d'actualització de Windows 11:  

  - Descarregar des del web oficial de Microsoft i seguir els passos.  

Avantatge: Manté fitxers i programes.  
Desavantatge: Pot haver-hi problemes de compatibilitat amb controladors antics.  

# 5. Documentació respecte a la instal·lació i incidències  

## Documents útils sobre Windows 11  
- Guia oficial de Microsoft: [support.microsoft.com](https://support.microsoft.com)  

- Fòrum d'ajuda de Microsoft: [answers.microsoft.com](https://answers.microsoft.com)  

- Documents tècnics sobre compatibilitat i instal·lació:  

  - [Windows Hardware Certification](https://docs.microsoft.com/en-us/windows-hardware/)  

  - [Windows Deployment Toolkit](https://docs.microsoft.com/en-us/windows/deployment/)  

## Incidències més comunes durant la instal·lació i com solucionar-les  

| Problema | Solució |
|-------------|------------|
| No es pot instal·lar per falta de TPM 2.0 | Activar TPM des de la BIOS/UEFI |
| Windows 11 no apareix a Windows Update | Descarregar i utilitzar l’Assistent d’Actualització |
| Error "No es pot instal·lar en aquest PC" | Comprovar compatibilitat amb PC Health Check |
| Falta d'espai en disc | Alliberar espai o instal·lar en un altre disc |

# Conclusió  

Windows 11 representa un pas endavant en seguretat i rendiment, però també imposa nous requisits de maquinari (hardware). Seguir una guia estructurada per a la instal·lació ajuda a evitar problemes i optimitzar el sistema.
