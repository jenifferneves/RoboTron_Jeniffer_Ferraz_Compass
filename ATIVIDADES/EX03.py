valor1 = int(input("Digite o Primeiro valor: "))
valor2 = int(input("Digite o Segundo valor: "))

soma = valor1 + valor2

if soma % 2 == 0:
    print(f"A soma de {valor1} e {valor2} � {soma}, que � um n�mero PAR.")
else:
    print(f"A soma de {valor1} e {valor2} � {soma}, que � um n�mero �MPAR.")
