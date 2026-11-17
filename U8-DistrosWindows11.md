---
title: |
  | U8 DISTRIBUCIONS DE WINDOWS 11
subtitle: |
  | Resum característiques
Author: "Tomàs Ferrandis Moscardó"
output:
  pdf_document: 
    toc: false
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

# 1 Introducció
Windows 11 té diverses edicions o "distros" dissenyades per a diferents tipus d'usuaris i necessitats. Aquí tens una explicació de les principals:

## 1. Windows 11 Home

* Destinat a usuaris domèstics.
* Inclou funcions bàsiques com Microsoft Edge, Microsoft Store, el mode fosc, i la compatibilitat amb aplicacions d'Android (a partir de Windows Subsystem for Android).
* Té integració amb Microsoft Teams i la possibilitat d'iniciar sessió amb un compte de Microsoft.
* No permet unir-se a dominis d’empresa ni té BitLocker nadiu.

## 2. Windows 11 Pro

* Inclou totes les funcions de Windows 11 Home, però amb característiques addicionals per a professionals i empreses.
* Suporta BitLocker (xifrat de disc), Hyper-V (virtualització), Windows Sandbox, i la unió a Active Directory i Azure AD.
* Permet un millor control sobre les actualitzacions i més opcions de seguretat avançada.

## 3. Windows 11 Pro for Workstations

* Una versió millorada per a ordinadors d'alt rendiment.
* Ofereix suport per a ReFS (Resilient File System), memòria persistent, i Windows Subsystem for Linux (WSL).
* Optimitzat per a processadors d’alt rendiment i per a treballs exigents, com l'edició de vídeo o modelatge 3D.

## 4. Windows 11 Enterprise

* Dissenyat per a grans empreses.
* Té totes les funcions de Windows 11 Pro, però amb eines avançades per a gestió de seguretat i desplegament a gran escala.
* Inclou Windows Defender Application Guard, protecció contra amenaces avançades i gestió remota millorada.

## 5. Windows 11 Education

* Similar a Windows 11 Enterprise, però adaptat a centres educatius.
* Ofereix eines per a gestió de dispositius d'estudiants i seguretat millorada per a institucions educatives.
* No inclou algunes funcions empresarials innecessàries en l'àmbit educatiu.

## 6. Windows 11 SE

* Versió més lleugera i simplificada per a dispositius educatius, especialment portàtils destinats a estudiants.
* Optimitzat per a aplicacions en el núvol i integració amb Microsoft 365.
* Limita la instal·lació d’apps de tercers per millorar la seguretat i el rendiment.

## 7. Windows 11 IoT (Internet of Things)

* Dissenyat per a dispositius especialitzats com caixers automàtics, dispositius mèdics i terminals de punt de venda.

* Ofereix una versió més personalitzable i segura per a aplicacions industrials.

\newpage

# 2 Quina versió triar?

* Per a ús domèstic: Windows 11 Home.
* Per a treball i empreses menudes: Windows 11 Pro.
* Per a treballs exigents (disseny, edició, etc.): Windows 11 Pro for Workstations.
* Per a empreses grans: Windows 11 Enterprise.
* Per a educació: Windows 11 Education o Windows 11 SE.
* Per a dispositius especialitzats: Windows 11 IoT.
    
# 3 Taula resum

| Edició                     | Característiques principals                                           | Destinat a...                          |
|----------------------------|------------------------------------------------------------------------|-----------------------------------------|
| **Windows 11 Home**        | Funcions bàsiques, integració amb Microsoft Teams, sense BitLocker   | Usuaris domèstics                      |
| **Windows 11 Pro**         | BitLocker, Hyper-V, Active Directory, gestió empresarial             | Professionals i xicotes empreses       |
| **Windows 11 Pro for Workstations** | ReFS, optimitzat per a treballs exigents, WSL | Usuaris avançats i treballs d’alt rendiment |
| **Windows 11 Enterprise**  | Seguretat avançada, gestió d’equips, protecció contra amenaces        | Empreses grans                         |
| **Windows 11 Education**   | Adaptat a institucions educatives, eines per a estudiants i professors | Centres educatius                      |
| **Windows 11 SE**          | Versió simplificada per a estudiants, optimitzada per a núvol        | Estudiants i escoles                    |
| **Windows 11 IoT**         | Personalització per a dispositius industrials i comercials          | Dispositius especialitzats (caixers, terminals) |
