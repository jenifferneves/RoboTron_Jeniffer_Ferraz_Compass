import json

def retornar_json():
   
    with open(r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\partida.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = retornar_json()

partidas = json_retornado["copa-do-brasil"]

for partida in partidas:
   
    nome_estadio = partida["estadio"]["nome_popular"]
    placar = partida["placar"]
    status = partida["status"]
 
    print(f"Estádio: {nome_estadio}")
    print(f"Placar: {placar}")
    print(f"Status: {status}")
