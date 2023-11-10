require 'csv'
file_path = "C:\\Users\\esdras borges\\Desktop\\my_gem\\alunos.csv"
arquivo_csv = "tabela.csv"

CSV.open(arquivo_csv, "w") do |csv|
    CSV.foreach(file_path) do |linha|
        csv << linha
    end
end

puts "Arquivo criado com sucesso!"

idade = []
    CSV.foreach(file_path) do |linha|
        idade << [linha[2]]
    end

arquivo_idades = "idades.csv"
CSV.open(arquivo_idades, "w") do |csv|
   idade.each do |i|
    csv << i
   end
end