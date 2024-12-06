import pandas as pd

arquivo = pd.read_csv(
    r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\elementos_tabela_periodica.csv",
    encoding="utf-8", 
    sep=","
)

def buscar_elemento(simbolo):
    
    elemento = arquivo[arquivo["Simbolo"] == simbolo]
    
    if not elemento.empty:
        
        print("Informacoes do elemento:")
        print(elemento.to_string(index=False)) 
    else:
        print(f"Elemento com simbolo {simbolo} nao encontrado.")

while True:
    
    simbolo_input = input("Digite o simbolo do elemento (ou 'sair' para encerrar): ").strip()
    
    if simbolo_input.lower() == 'sair':
        print("Saindo...")
        break
  
    buscar_elemento(simbolo_input)
