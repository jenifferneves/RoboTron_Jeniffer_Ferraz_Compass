import pandas as pd

arquivo = pd.read_csv(
    r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\pandas.csv", 
    encoding="latin-1", 
    sep=","
)

arquivo_filtrado = arquivo[arquivo["Movie"] != "The Revenant"]

print("Filmes (exceto 'The Revenant'):")
for _, row in arquivo_filtrado.iterrows():
    year = row["Year"]
    movie = row["Movie"]
    print(f"Ano: {year}, Filme: {movie}")
