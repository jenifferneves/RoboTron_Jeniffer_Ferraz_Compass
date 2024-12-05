import pandas as pd

arquivo = pd.read_csv(
    r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\pandas.csv", 
    encoding="latin-1", 
    sep=","
)

arquivo["Movie_Year"] = arquivo["Movie"] + " (" + arquivo["Year"].astype(str) + ")"

print(arquivo.head())
