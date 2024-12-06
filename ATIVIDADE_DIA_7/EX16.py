import pandas as pd

arquivo = pd.read_csv(
    r"C:\Users\jeniffer.neves\source\repos\jenifferneves\RoboTron_Jeniffer_Ferraz_Compass\ATIVIDADE_DIA_7\elementos_tabela_periodica.csv",
    encoding="utf-8", 
    sep=","
)

def listar_propriedade(propriedade):
    if propriedade not in arquivo.columns:
        print("Propriedade invalida!") 
        return
    
    for index, row in arquivo.iterrows():
        print(f"{row[propriedade]}")

def menu():
    while True:
        print("\nOpcoes:")
        print("1. Listar todos os nomes dos elementos")
        print("2. Listar todos os simbolos dos elementos")
        print("3. Listar todos os estados fisicos dos elementos")
        print("4. Sair")
        
        opcao = input("Escolha uma opcao (1-4): ")
        
        if opcao == "1":
            print("\nNomes dos elementos:")
            listar_propriedade("Nome")
        elif opcao == "2":
            print("\nSimbolos dos elementos:")
            listar_propriedade("Simbolo")
        elif opcao == "3":
            print("\nEstados fisicos dos elementos:")
            listar_propriedade("EstadoFisico")
        elif opcao == "4":
            print("Saindo...")
            break
        else:
            print("Opcao invalida, por favor escolha uma opcao entre 1 e 4.")  
menu()
