## Script 1

A este script li passem 1 paràmetre que pot ser "b" o "c" i busca a la carpeta de dispositius /dev/ quants fitxers (dispositius) de bloc (b) o de caràcter (c) hi ha.

Abans de fer la búsqueda, mira si li han passa 1 sol argument, es cas contrari avorta (exit 1).
Si se li ha passat un paràmetre (com toca fer), continua i és quan fa la seua funció.

```bash
#!/bin/bash
# Amb el if (si) controlarem si no han passat 1 arguments. En eixe cas fem "exit" (avortem)
if [ $# -ne 1 ];then
echo "NO has passat 1 paràmetre"
exit 1
fi


# Ara miramem quin valor té el $1 (segon paràmetre).

if  [ "$1" == "b" ];then # Si han passat el valor "d", buscarem directoris

num=0    # Opcional 
num=$(ls -l /dev |grep ^b |wc -l)
echo "Hi ha $num dispositius de tipus bloc"
exit
fi

# Si no ens ha passat "d" com segon paràmetre, comptem els fitxers

if  [ "$1" == "c" ];then
num=0
num=$(ls -l /dev |grep ^c|wc -l)

echo "Hi ha $num dispositus de tipus caracter"
exit
fi

# Si el segon paràmetre no és b ni c ...
echo "Error: no heu indicat b o c"
exit 2
```

## Script 2

A este script li passem 1 paràmetre i comprova que:
* Se li haja passat 1 paràmetre. En cas contrari, avorta. Sise li ha passat un, continua i...
* Comprova que el paràmetre siga un directori. Si no és (! -d), avorta

Si les dos comprovacions són correctes, continua i fa la seua funció: comptar quants fitexr *.hlml hi ha a la carpeta.

```bash
 #!/bin/bash

# Verificar si hi ha exactament un argument
if [ "$#" -ne 1 ]; then
    echo "Error: Has de proporcionar exactament un paràmetre."
    exit 1
fi

# Verificar si NO és un directori
if [ ! -d "$1" ]; then
    echo "Error: El paràmetre no és un directori."
    exit 2
fi

num=$(ls -l|grep ^-|grep -i HTML$|wc -l)
echo "Hi ha $num en $1"
```