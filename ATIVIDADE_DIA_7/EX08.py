import pandas as pd

# Caminho do arquivo
arquivo = pd.read_csv(r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\pandas.txt", encoding="utf-8", sep=",")

# Mostrar as primeiras linhas para verificar o conteúdo
print(arquivo.head())
