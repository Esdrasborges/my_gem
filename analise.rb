require 'csv'

file = CSV.read('C:\\Users\\esdras borges\\Desktop\\my_gem\\teste.csv')
csv_file = "dados.csv"

CSV.open(csv_file, "wb") do |csv|
  file.each do |row|
    csv << row
  end
end

puts "Dados importados com sucesso para #{csv_file}"