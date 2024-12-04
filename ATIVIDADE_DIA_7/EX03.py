import json

def retornar_json():
    # Abrindo o arquivo JSON
    with open(r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\partida.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

# Carregar o JSON
json_retornado = retornar_json()

# Extrair as informações desejadas
partida = json_retornado["copa-do-brasil"][0]  # Pegando a primeira partida
nome_estadio = partida["estadio"]["nome_popular"]
placar = partida["placar"]
status = partida["status"]

# Mostrar os dados
print(json.dumps({
    "Nome do Estadio": nome_estadio,  # Corrigido aqui
    "Placar": placar,
    "Status": status
}, indent=4, ensure_ascii=False))
