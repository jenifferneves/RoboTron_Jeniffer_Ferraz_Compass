import json

# Função para retornar o JSON a partir do arquivo
def retornar_json():
    with open(r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\partida.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

# Carregar o JSON
json_retornado = retornar_json()

# Acessar o time visitante
time_visitante = json_retornado["copa-do-brasil"][0]["time_visitante"]

# Exibir todas as chaves e valores do time visitante
print(json.dumps(time_visitante, indent=4, ensure_ascii=False))
