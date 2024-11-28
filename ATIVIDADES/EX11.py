inicio, fim = map(int, input().split())
duracao = 0

if inicio < fim:
    duracao = fim - inicio

else:
    duracao = (24 - inicio) + fim

print('O JOGO DUROU', duracao, 'HORA(S)')