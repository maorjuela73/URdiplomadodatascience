# SUMA
suma = 0
for i in range(1001):
  if i % 3 == 0 or i % 5 == 0:
    suma += i
print(suma)

# PRIMOS
for num in range(1,20):
  if num > 1:
    for i in range(2,num):
      if num % i == 0:
        break
    else:
      print(num)

# PARES E IMPARES

termino_1 = 1
termino_2 = 1

pares = 0
impares = 0

for i in range(1,21):
  if i == 1:
    print(f"termino {i}: {termino_1 % 2 == 0} {termino_1}")
    impares += 1
  elif i == 2:
    print(f"termino {i}: {termino_2 % 2 == 0} {termino_2}")
    impares += 1
  else:
    temp = termino_1 + termino_2
    termino_1 = termino_2
    termino_2 =  temp
    print(f"termino {i}: {termino_2 % 2 == 0} {termino_2}")
    if termino_2 % 2 == 0:
      pares += 1
    else:
      impares += 1

print(f"PARES: {pares} - IMPARES {impares}")