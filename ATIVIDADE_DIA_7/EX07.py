import json

def retornar_json():
    caminho_arquivo = r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\campeonato.json"
    with open(caminho_arquivo, encoding="utf-8") as json_normal:
        return json.load(json_normal)

json_retornado = retornar_json()

print("Chaves principais do JSON:")
for chave in json_retornado.keys():
    print(chave)
