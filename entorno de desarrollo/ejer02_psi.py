def realizar_division():
    while True:
        try:
            numerador = float(input("Ingrese el numerador: "))
            denominador = float(input("Ingrese el denominador: "))
            resultado = numerador / denominador
            print("El resultado de la división es:", resultado)
            return True
        except ZeroDivisionError:
            print("Error: No se puede dividir entre cero. Inténtalo de nuevo.")
        except ValueError:
            print("Error: Debes ingresar valores numéricos. Inténtalo de nuevo.")

def main():
    while True:
        if not realizar_division():
            break
        respuesta = input("¿Desea realizar otra división? (s/n): ")
        if respuesta.lower() != 's':
            break

if __name__ == "__main__":
    main()
