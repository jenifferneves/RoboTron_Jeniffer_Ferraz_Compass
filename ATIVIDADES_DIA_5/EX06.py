x = int(input("Digite um valor inteiro maior que 2: "))

if x > 2:
    print(f"Os números ímpares entre 0 e {x} são:")
    for i in range(x + 1):
        if i % 2 != 0:
            print(i, end=" ")
else:
    print("O valor precisa ser maior que 2!")
