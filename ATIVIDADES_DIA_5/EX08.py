valor = int(input("Digite um valor inteiro para x: "))

if valor % 2 == 0:
    fatorial = 1
    for i in range(1, valor + 1):
        fatorial *= i
    print(f"O fatorial de {valor} é {fatorial}")
else:
    print(f"Tabuada de {valor}:")
    for i in range(1, 11):
        print(f"{valor} x {i} = {valor * i}")
