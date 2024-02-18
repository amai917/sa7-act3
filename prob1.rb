require 'csv'

csv_file = 'data.csv'

data_array = []

CSV.foreach(csv_file, headers: true) do |row|
  data_array << row.to_h
end

puts data_array.inspect
