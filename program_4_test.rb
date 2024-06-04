require 'date'

def interval_iterator(start_date, end_date, interval)
  start_date = Date.strptime(start_date, '%d-%m-%Y')
  end_date = Date.strptime(end_date, '%d-%m-%Y')
  result = []

  case interval
  when 'monthly'
    current_date = Date.new(start_date.year, start_date.month, 1)
    while current_date <= end_date
      result << current_date.strftime('%d-%m-%Y')
      current_date = (current_date >> 1) 
    end
  when 'weekly'
    current_date = start_date - start_date.wday
    while current_date <= end_date
      result << current_date.strftime('%d-%m-%Y')
      current_date += 7
    end
  else
    raise ArgumentError, "Invalid interval: #{interval}"
  end

  result
end

p interval_iterator('01-01-2016', '31-05-2016', 'monthly')
p interval_iterator('15-01-2016', '20-05-2016', 'monthly')
p interval_iterator('15-01-2016', '20-02-2016', 'weekly')
