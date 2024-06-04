require 'csv'
require 'json'

class DataPacket
  attr_reader :array_data, :hash_data

  def array_data=(csv_string)
    @array_data = CSV.parse_line(csv_string).map(&:to_i)
  end

  def hash_data=(json_string)
    @hash_data = JSON.parse(json_string)
  end
end


data_packet = DataPacket.new
data_packet.array_data = '1,2,3,4'

puts data_packet.array_data.inspect 

data_packet.hash_data = '{"a": 1, "b": 2, "c": {"d": 3, "e": 4}}'
puts data_packet.hash_data.inspect 
