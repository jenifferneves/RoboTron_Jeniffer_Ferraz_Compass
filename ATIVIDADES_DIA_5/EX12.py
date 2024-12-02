idade = int(input()) 

ano = idade // 365
idade %= 365 

mes = idade // 30
idade %= 30 
dia = idade

print(f'{ano} Ano(s)\n{mes} Mes(es)\n{dia} Dia(s)')