valores = []

for i in range(1, 16):
    valor = input(f"Digite o Valor {i}: ")
    valores.append(valor)

print("\nValores da lista do último para o primeiro:")
for valor in reversed(valores):
    print(valor)
