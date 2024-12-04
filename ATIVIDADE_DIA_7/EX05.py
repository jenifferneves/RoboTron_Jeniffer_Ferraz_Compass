import json

def retornar_json():
   
    with open(r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\campeonato.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = retornar_json()

print(json.dumps(json_retornado, indent=4, ensure_ascii=False))
