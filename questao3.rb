# 3) Dado um vetor que guarda o valor de faturamento diário de uma distribuidora, 
# faça um programa, na linguagem que desejar, que calcule e retorne:
# • O menor valor de faturamento ocorrido em um dia do mês;
# • O maior valor de faturamento ocorrido em um dia do mês;
# • Número de dias no mês em que o valor de faturamento diário foi superior à média mensal.


require 'json'

dados_json = '{
  "faturamento": [100, 200, 300, 0, 400, 500, 0, 600, 700]
}'

dados = JSON.parse(dados_json)
faturamento = dados["faturamento"]

faturamento_validos = faturamento.select { |dia| dia > 0 }
media_mensal = faturamento_validos.sum.to_f / faturamento_validos.size

menor = faturamento_validos.min
maior = faturamento_validos.max
dias_acima_media = faturamento_validos.count { |dia| dia > media_mensal }

puts "Menor faturamento: R$#{menor}"
puts "Maior faturamento: R$#{maior}"
puts "Dias acima da média: #{dias_acima_media}"


