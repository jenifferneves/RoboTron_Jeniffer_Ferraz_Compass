import json

def retornar_json():
    
    with open(r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\partida.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = retornar_json()

partida = json_retornado["copa-do-brasil"][0] 
nome_estadio = partida["estadio"]["nome_popular"]
placar = partida["placar"]
status = partida["status"]

print(json.dumps({
    "Nome do Estadio": nome_estadio,
    "Placar": placar,
    "Status": status
}, indent=4, ensure_ascii=False))
