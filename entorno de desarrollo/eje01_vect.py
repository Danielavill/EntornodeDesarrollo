num=[]

for i in range (6):
 try:
    n= int (input("imgrese un numero: ")) 
    num.append(n)
 except:
  print("ingrese un numero valido")

multiplos = []
for num in num:
    if num % 2 ==0:
     multiplos.append(num)

print("los multiplos de 2 son:", multiplos)
