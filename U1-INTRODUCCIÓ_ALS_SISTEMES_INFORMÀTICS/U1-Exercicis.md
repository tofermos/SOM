---
title: |
  | U1 EXERCICIS. INTRODUCCIÓ ALS SISTEMES INFORMÀTICS
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
    toc_depth: '3'
lang: "es-ES"
fontsize: 12 pt
mainfont: Times New Roman
papersize: A4
linestretch: 1.5
---

\newpage
\renewcommand\tablename{Tabla}

## 1 Conversió de RGB

Els codis hexadecimals de colors RGB es representen amb 6 dígits: dos per al component roig (Red), dos per al component verd (Green) i dos per al component blau (Blue). Cada component és un número hexadecimal que pots convertir a binari i també (SEPARANT de 2 en 2 a decimal).

**Instruccions per a cada cas:**

1. Separar el codi hexadecimal en tres parts: una per al component vermell (R), una per al component verd (G) i una per al component blau (B).
2. Convertir cada part hexadecimal a decimal.
3. Convertir cada valor decimal a binari, assegurant-te que cada component binari sigui de 8 bits.

Exemple de resolució per al cas #FF5733:

**Hexadecimal:** #FF5733  
   - R = FF  
   - G = 57  
   - B = 33  

**Conversió a decimal:**
   - R = 16*16$^{1}$ + 15 = 255  
   - G = 5*16$^{1}$ + 7 = 87  
   - B = 3*16$^{16}$ + 3 =  51

**Conversió a binari (8 bits):** 
   - R = 11111111  
   - G = 01010111  
   - B = 00110011  
   

**Fes els següents exemples:**

1. **#4A90E2**  
3. **#7D3F8C**  
4. **#2ECC71**  
5. **#E74C3C**  


## 2 Conversió de IPv4

Una IP4 està composada de 4 bytes (4 * 8 = 32 bits). Però la representem per comoditat en decimal

Vegem l'exemple de conversió:
Per convertir una adreça IP en IPv4 a binari i hexadecimal, segueix aquests passos:



**Conversió a binari:**

   - Separar l’adreça IP en els seus quatre octets: 192, 168, 1, 10.
   - Convertir cada octet a binari:

Exemple: **192.168.1.10**
  **192** en binari:  
       Decimal: 192  
       Binari: 11000000

  **168** en binari:  
       Decimal: 168  
       Binari: 10101000

  **1** en binari:  
       Decimal: 1  
       Binari: 00000001

  **10** en binari:  
       Decimal: 10  
       Binari: 00001010

Per tant, l’adreça IP en binari és:  
     **11000000.10101000.00000001.00001010**

Com passaries a hexadecimal el binari resultant?

**Fes la conversió a binari i decimal de les IPs:**


1. **10.2.2.2**

2. **172.217.3.110**

3. **151.101.1.67**

4. **13.226.32.32**

5. **255.255.255.0**


## 3 Octal

Representa en octal i decimal els caracters especials i les lletres següents d' ASCII ( et deixe al costa el seu valor en decimal )

1. **<	60**
2. **@	64**
3. **A	65**
4. **C	67**
5. **F	70**
6. **w	119**
7. **{	123**
8. **a  97**

## 4 Investigació

Investiga i documenta molt breument com són les adreces MAC, com estan compostes,  com es guarden, ús...