import pandas as pd

arquivo = pd.read_csv(
    r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\pandas.csv", 
    encoding="latin-1", 
    sep=","
)

ator_1993 = arquivo.loc[arquivo["Year"] == 1993, "Name"].iloc[0]

print(f"O ator que ganhou o Oscar em 1993 foi: {ator_1993}")
