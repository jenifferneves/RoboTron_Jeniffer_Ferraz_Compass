import pandas as pd

# Caminho do arquivo
arquivo = pd.read_csv(
    r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\pandas.csv", 
    encoding="latin-1", 
    sep=","
)

atores = arquivo.loc[arquivo["Year"].isin([1991, 2016]), "Name"]

print("Os atores que ganharam o Oscar em 1991 e 2016 foram:")
for nome in atores:
    print(nome)
