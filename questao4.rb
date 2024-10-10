# 4) Dado o valor de faturamento mensal de uma distribuidora, detalhado por estado:
# • SP – R$67.836,43
# • RJ – R$36.678,66
# • MG – R$29.229,88
# • ES – R$27.165,48
# • Outros – R$19.849,53


faturamento_estados = {
  "SP" => 67836.43,
  "RJ" => 36678.66,
  "MG" => 29229.88,
  "ES" => 27165.48,
  "Outros" => 19849.53
}

total = faturamento_estados.values.sum

percentuais = faturamento_estados.transform_values { |valor| (valor / total) * 100 }

percentuais.each do |estado, percentual|
  puts "#{estado}: #{percentual.round(2)}% do faturamento total."
end


