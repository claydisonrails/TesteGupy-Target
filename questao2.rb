# 2) Dado a sequência de Fibonacci, 
# onde se inicia por 0 e 1 e o próximo valor sempre será a soma dos 2 valores anteriores
# (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...), e
# screva um programa na linguagem que desejar onde, informado um número, ele calcule a sequência de Fibonacci 
# e retorne uma mensagem avisando se o número informado pertence ou não a sequência.

def pertence_fibonacci(n)
  a, b = 0, 1
  while a < n
    a, b = b, a + b
  end
  a == n
end

print "Informe um número: "
numero = gets.to_i

if pertence_fibonacci(numero)
  puts "O número #{numero} pertence à sequência de Fibonacci."
else
  puts "O número #{numero} não pertence à sequência de Fibonacci."
end




