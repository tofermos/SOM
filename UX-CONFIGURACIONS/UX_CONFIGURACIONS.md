
# 1 Configuració del teclat en Lubuntu.

## 1.1. **Des del GUI (Interfície Gràfica)**
   - Ves a **Menú d'inici** > **Preferències** > **Configuració del teclat**.
   - A la finestra, pots:
     - Veure i modificar la distribució del teclat.
     - Ajustar la velocitat de repetició de les tecles, etc.

---

## 2. **Des del Terminal**

###  2.1 **Comprovar la Configuració Actual del Teclat**
   Utilitza l'ordre següent per veure la configuració activa:
   ```bash
   setxkbmap -print -verbose 10
   ```

#### 2.2 **Canviar la Configuració del Teclat Directament amb Ordres**
   - **Establir la distribució espanyola amb tecles mortes activades** (per poder combinar `^`, `~`, `"`, etc.):
     ```bash
     setxkbmap -model pc105 -layout es
     ```

   - **Establir la distribució espanyola amb variant catalana i tecles mortes**:
     ```bash
     setxkbmap -model pc105 -layout es -variant cat
     ```

   - **Desactivar les tecles mortes** (per escriure `^`, `~`, etc. directament sense combinacions):
     ```bash
     setxkbmap -model pc105 -layout es -variant cat -option nodeadkeys
     ```

#### 2.3 **Editar la Configuració Permanent del Teclat amb `sudo nano`**
   - Obre l’arxiu `/etc/default/keyboard` amb permís d'administrador:
     ```bash
     sudo nano /etc/default/keyboard
     ```

   - Assegura't que les configuracions són les desitjades, per exemple:

     ```plaintext
     XKBMODEL="pc105"
     XKBLAYOUT="es"
     XKBVARIANT="cat"
     XKBOPTIONS=""  # Deixa buit per activar tecles mortes; afegeix "nodeadkeys" per desactivar-les
     ```

   - **Guarda i tanca l'arxiu**. Després, aplica els canvis amb aquestes ordres:
     ```bash
     sudo dpkg-reconfigure keyboard-configuration
     sudo service keyboard-setup restart
     ```

   - **Reinicia la sessió o l'ordinador** per assegurar-te que la nova configuració s’aplica correctament.

---

Aquí tens els passos per configurar la xarxa en Lubuntu dins de VirtualBox, amb diferents modes de xarxa:

---

### 1. **NAT (Network Address Translation)**
   - **Configuració a VirtualBox**:
     1. A VirtualBox, selecciona la màquina virtual de Lubuntu.
     2. Ves a **Configuració** > **Xarxa**.
     3. Tria l’**Adaptador 1** i assegura't que està **Activat**.
     4. Selecciona **Mode d'adaptador**: `NAT`.
     5. Desa els canvis i arrenca la màquina virtual.

   - **Des de Lubuntu**:
     Amb el mode `NAT`, VirtualBox assigna una IP automàticament. Comprova la IP des del terminal amb:
     ```bash
     ip addr show
     ```

---

### 2. **Adaptador Pont (Bridged Adapter)**
   - **Configuració a VirtualBox**:
     1. A VirtualBox, selecciona la màquina virtual de Lubuntu.
     2. Ves a **Configuració** > **Xarxa**.
     3. A l’**Adaptador 1**, selecciona **Mode d’adaptador**: `Adaptador pont`.
     4. A **Nom de la xarxa**, tria l'adaptador de xarxa de l'ordinador host (Wi-Fi o Ethernet).
     5. Desa els canvis i arrenca la màquina virtual.

   - **Des de Lubuntu**:
     Lubuntu rebrà una IP de la mateixa xarxa que l’ordinador host (generalment per DHCP). Comprova la IP amb:
     ```bash
     ip addr show
     ```

---

### 3. **Xarxa Interna amb IP Estàtica (192.168.10.4/24)**
   - **Configuració a VirtualBox**:
     1. A VirtualBox, selecciona la màquina virtual de Lubuntu.
     2. Ves a **Configuració** > **Xarxa**.
     3. A l’**Adaptador 1**, selecciona **Mode d’adaptador**: `Xarxa interna`.
     4. A **Nom de la xarxa interna**, escriu un nom de xarxa (ex., `intnet`).
     5. Desa els canvis i arrenca la màquina virtual.

   - **Configuració d'IP estàtica a Lubuntu**:
     1. Obre el terminal i edita el fitxer de configuració de xarxa:
        ```bash
        sudo nano /etc/netplan/01-netcfg.yaml
        ```
     2. Configura l'adreça IP estàtica. L'arxiu hauria de tenir un aspecte similar a aquest:

        ```yaml
        network:
          version: 2
          ethernets:
            enp0s3:
              dhcp4: no
              addresses:
                - 192.168.10.4/24
        ```

        *Nota*: Substitueix `enp0s3` pel nom correcte de l'adaptador, que pots trobar amb `ip addr show`.

     3. Desa i aplica la configuració:
        ```bash
        sudo netplan apply
        ```

---

### 4. **Xarxa Interna amb Servidor DHCP (IP del servidor DHCP: 192.168.10.1/24)**
   - **Configuració a VirtualBox**:
     1. A VirtualBox, selecciona la màquina virtual de Lubuntu.
     2. Ves a **Configuració** > **Xarxa**.
     3. A l’**Adaptador 1**, selecciona **Mode d’adaptador**: `Xarxa interna`.
     4. A **Nom de la xarxa interna**, utilitza el mateix nom de xarxa que la configuració anterior (ex., `intnet`).
     5. Desa els canvis i arrenca la màquina virtual.

   - **Configuració d'IP automàtica amb DHCP a Lubuntu**:
     1. Obre el fitxer de configuració de xarxa:
        ```bash
        sudo nano /etc/netplan/01-netcfg.yaml
        ```
     2. Configura el fitxer per a IP automàtica amb DHCP:

        ```yaml
        network:
          version: 2
          ethernets:
            enp0s3:
              dhcp4: yes
        ```

     3. Desa i aplica la configuració:
        ```bash
        sudo netplan apply
        ```

   - **Nota**: Per a aquesta configuració, has d’assegurar-te que hi ha un servidor DHCP a la xarxa interna, configurat amb la IP `192.168.10.1`.

---

