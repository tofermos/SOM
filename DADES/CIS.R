# Instal·la només si falta
if (!requireNamespace("haven", quietly = TRUE)) install.packages("haven")
if (!requireNamespace("data.table", quietly = TRUE)) install.packages("data.table")


# Carregue els paquets
library(haven)
library(data.table)

# Llegim el fitxer .sav i els dese en un data.table
data <- as.data.table(read_sav("dades_CIS.sav"))

# Guarda el data.table com un fitxer .csv
fwrite(data, "dades_CIS.csv")


