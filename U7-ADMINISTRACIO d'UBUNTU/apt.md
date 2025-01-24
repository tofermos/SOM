---
output:
  pdf_document: default
  html_document: default
---

# APT

Per gestionar paquets `.deb` amb `apt`, les opcions principals són:

1. **Instal·lar un paquet `.deb`:**
   ```bash
   sudo apt install ./nom_paquet.deb
   ```
   - Utilitza `./` per indicar que el fitxer és local.

2. **Reinstal·lar un paquet `.deb` ja instal·lat:**
   ```bash
   sudo apt install --reinstall ./nom_paquet.deb
   ```

3. **Eliminar un paquet instal·lat (sense eliminar configuració):**
   ```bash
   sudo apt remove nom_paquet
   ```

4. **Eliminar un paquet i els seus fitxers de configuració:**
   ```bash
   sudo apt purge nom_paquet
   ```

5. **Corregir errors de dependències trencades després de la instal·lació:**
   ```bash
   sudo apt --fix-broken install
   ```
   
   
Activitat:

1.- Descarrega't i guarda en una carperta /home/tomas/Documents/SOFTWARE el .deb de Visual Studio Code.
2.- Accedeix a ell des de a MV Lubuntu.
3.- Instal·la'l.
4.- Comprova que funciona correctament
5.- Desinstal·la'l.

[Visual Studio Code](https://code.visualstudio.com/)

