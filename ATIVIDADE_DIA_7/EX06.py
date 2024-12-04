import json

def retornar_json():
    with open(r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\campeonato.json", encoding="utf-8") as json_normal:
        json_manipulavel = json.load(json_normal)
        return json_manipulavel

json_retornado = retornar_json()

edicao_atual = json_retornado["edicao_atual"]
fase_atual = json_retornado["fase_atual"]
rodada_atual = json_retornado["rodada_atual"]

print("Edição Atual:")
print(json.dumps(edicao_atual, indent=4, ensure_ascii=False))

print("\nFase Atual:")
print(json.dumps(fase_atual, indent=4, ensure_ascii=False))

print("\nRodada Atual:")
print(json.dumps(rodada_atual, indent=4, ensure_ascii=False))
