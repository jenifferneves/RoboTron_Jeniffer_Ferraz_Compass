frutas_predefinidas = ["ma��", "banana", "pera"]

frutas_usuario = []
for i in range(1, 4):
    fruta = input(f"Digite a fruta {i}: ")
    frutas_usuario.append(fruta.lower())

# Comparando as listas
if frutas_usuario == frutas_predefinidas:
    print("\nAs frutas inseridas s�o as mesmas da lista predefinida.")
else:
    print("\nAs frutas inseridas s�o diferentes da lista predefinida.")
    print("Frutas inseridas:", frutas_usuario)
    print("Frutas predefinidas:", frutas_predefinidas)
