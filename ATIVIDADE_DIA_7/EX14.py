import pandas as pd

arquivo = pd.read_csv(
    r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\pandas.csv", 
    encoding="latin-1", 
    sep=","
)
filtro = (arquivo["Year"] >= 1987) & (arquivo["Year"] <= 1999)
dados_filtrados = arquivo[filtro]

print("Nomes e idades dos atores vencedores 1987-1999:")
for _, row in dados_filtrados.iterrows():
    year = row["Year"]
    name = row["Name"]
    age = row["Age"]
    print(f"Ano: {year}, Nome: {name}, Idade: {age}")

