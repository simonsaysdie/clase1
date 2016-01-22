:atom

[saludo: "hola"]

[{:saludo, "hola"}]

tuple = {1, 2, 3}
IO.puts tuple
tuple = {1, 2}
IO.puts tuple

elem(tuple, 0) = 1

[1, 2, 3] = [first|else]

"hola" -string
'hola' -charlist

"hola" <> "mundo"

[1, 2] ++ [4, 5] = [1, 2, 4, 5]

3..6
3, 4, 5, 6

1 + 1
2 - 2
3 / 3
4 * 4

rem(5, 4) = 1

true and false
true && false

saludo = "hola"
quien = "zura"

if "hola" == saludo do
	IO.puts(saludo)
else
	IO.puts("Quién eres?")
end

cond do
	saludo == "hola" && quien == zura ->
		IO.puts("hola zura!")
	saludo == "hola" ->
		IO.puts("Te conozco?")
	:else ->
		IO.puts("Eh?")
end

{1, 2} = {uno, dos}

operacion = ["suma", 5]

case operacion do
    ["suma", first, second] ->
	  first + second
	[_, first, second] ->
	  IO.puts("Sólo sé sumar")
	["suma", first] ->
	  IO.puts("Necesito dos nums")
	:else
	  IO.puts("Eh?")
end

def suma(first, second) do
	first + second
end

suma()

sumanon = fn(first, second) -> first + second end

sumanon.(first, second)

-----

defmodule Operacion do
	def suma(first, second) do
		first + second
	end

	def resta(first, second) do
		first - second
	end

	def division(first, second) do
		first / second
	end

	def multiplicacion(first, second) do
		first * second
	end

	defmodule Geometria do

	    def circulo(radio) do
	        3.1416 * (radio * radio)
		end

		def triangulo(first, second) do
			multiplicacion(3, 4) / 2
		end


		def pentagono(lado) do
		    perimetro = lado * 5
		    apotema = multiplicacion(perimetro * 2)
		    apotema / 2
		end
	end
end

defmodule Resultados do
	'''
	  Tengo una plaza con un área similar a 
	  dos pentágonos regulares de 5m por lado y
	  un círculo con un diámetro de 10m
	  Cuál es el área total?
	'''

	def area_plaza(lado_pentagono, diametro_circulo) do
        radio_circulo = diametro_circulo / 2

		pentagonos = Operacion.Geometria.pentagono(lado_pentagono) * 2
		circulo = Operacion.Geometria.circulo(radio_circulo)
		pentagonos + circulo

	end

	area_plaza(5, 10)


end

'''
	Tengo tres plazas:
	dos iguales en área a la anterior 
	y una igual a la mitad
	Cuál es el área total?
	'''
def area_plazas(lado_pentagono, diametro_circulo)do
	
	area_plazas_dos = Resultados.area_plaza(lado_pentagono, diametro_circulo) * 2
	mitad_plaza = Resultados.area_plaza(lado_pentagono, diametro_circulo) / 2

	area_plazas_dos + mitad_plaza
end

'''numero de plazas
lado pentagono
diametro_circulo
'''
def area_total_de_plazas(numero_plazas, lado_pentagono, diametro_circulo) do
  Resultados.area_plaza * numero_plazas
 	
end 








	


end




