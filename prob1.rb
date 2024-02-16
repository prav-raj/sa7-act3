require 'csv'

result = []

CSV.foreach('data.csv', headers: true) do |row|
  result << row.to_hash
end

p result
