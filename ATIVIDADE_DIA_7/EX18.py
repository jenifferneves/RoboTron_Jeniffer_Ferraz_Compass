import pandas as pd

arquivo = pd.read_csv(
    r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\elementos_tabela_periodica.csv",
    encoding="utf-8", 
    sep=","
)

def listar_todos_os_elementos():
    print(arquivo.to_string(index=False))

listar_todos_os_elementos()
