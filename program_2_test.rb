def printer(number)
  (1..number).each do |num|
    if num % 3 == 0 && num % 5 == 0
      puts 'Presto Apps'
    elsif num % 3 == 0
      puts 'Presto'
    elsif num % 5 == 0
      puts 'Apps'
    else
      puts num
    end
  end
end

printer(15)
