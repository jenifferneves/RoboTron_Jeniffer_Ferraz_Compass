valores_pares = []  

print("Digite 20 valores para X:")
for i in range(1, 21):
    valor = int(input(f"Digite o valor {i}: "))
    if valor % 2 == 0:  
        valores_pares.append(valor)

if valores_pares:
    media_pares = sum(valores_pares) / len(valores_pares)
    print(f"\nA m�dia aritm�tica dos valores Pares �: {media_pares:.2f}")
else:
    print("\nNenhum valor Par foi digitado.")
