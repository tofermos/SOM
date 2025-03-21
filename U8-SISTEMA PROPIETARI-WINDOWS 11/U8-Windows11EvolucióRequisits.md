---
title: |
  | U8 Evolució històrica del Windows i requisits 11
subtitle: |
  | Evolución històrica de Windows 11 i les necessitats per instal·lar
Author: "Tomàs Ferrandis Moscardó"
output:
  pdf_document: 
    toc: true
    toc_depth: 2
    keep_tex: true
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

# 1. Windows 11. Evolució històrica de Windows  

Windows 11 és la darrera versió del sistema operatiu de Microsoft, llançat el 5 d'octubre de 2021. Ha evolucionat des dels seus predecessors amb un nou disseny, millores en rendiment i una major integració amb serveis en el núvol.  

## Versions principals de Windows fins a Windows 11  
- Windows 95/98/ME: Primera interfície gràfica integrada amb el menú d'inici.  
- Windows XP (2001): Gran èxit pel seu rendiment i estabilitat.  
- Windows Vista (2006): Introducció de l'efecte Aero, però amb crítiques per requeriments alts.  
- Windows 7 (2009): Millores en rendiment i compatibilitat.  
- Windows 8/8.1 (2012-2013): Eliminació del menú d'inici, introducció de la interfície Metro.  
- Windows 10 (2015): Unificació de dispositius i suport continu amb actualitzacions periòdiques.  
- Windows 11 (2021): Nou disseny, millor compatibilitat amb aplicacions Android, millor optimització en jocs i enfocament en seguretat.  

# 2. Requisits del sistema operatiu  

## Requisits mínims per instal·lar Windows 11  
- Processador: 1 GHz o més, amb 2 o més nuclis i arquitectura de 64 bits.  
- Memòria RAM: 4 GB mínim.  
- Emmagatzematge: 64 GB d'espai lliure.  
- Firmware del sistema: UEFI amb Secure Boot activat.  
- TPM (Trusted Platform Module): Versió 2.0 obligatòria.  
- Targeta gràfica: Compatible amb DirectX 12 o superior.  
- Pantalla: Resolució mínima de 720p (9 polzades o més).  

## Explicació dels components clau  

### Firmware del sistema: UEFI amb Secure Boot activat  
UEFI (Unified Extensible Firmware Interface) és el sistema que gestiona l'arrencada del sistema operatiu i reemplaça la BIOS tradicional. Ofereix avantatges com arrencada més ràpida, suport per a discos grans (més de 2 TB) i major seguretat. Secure Boot és una funcionalitat d’UEFI que impedeix l'execució de codi maliciós en iniciar el sistema, garantint que només s'executin sistemes operatius verificats.  

### TPM (Trusted Platform Module) versió 2.0 obligatòria  
El TPM és un mòdul de seguretat integrat en el maquinari que protegeix dades sensibles mitjançant xifratge i claus criptogràfiques. Windows 11 requereix la versió 2.0 perquè millora la protecció contra atacs basats en maquinari i facilita l'ús de tecnologies com BitLocker per xifrar unitats de disc.  

### Targeta gràfica compatible amb DirectX 12 o superior  
DirectX 12 és un conjunt d'API que permet un millor rendiment gràfic en aplicacions i videojocs. Una targeta gràfica compatible amb DirectX 12 assegura una experiència fluida en Windows 11, especialment en aplicacions exigents com jocs, edició de vídeo o disseny 3D.  