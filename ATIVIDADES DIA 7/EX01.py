import json

def retornar_json():
    with open("C:\\Users\\jeniffer.neves\\Source\\Repos\\jenifferneves\\RoboTron_Jeniffer_Ferraz_Compass\\ATIVIDADE DIA 7\\partida.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = retornar_json()

print(json_retornado)