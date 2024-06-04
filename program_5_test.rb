def pattern_program(num)
  (1..num).each do |i|
    print_pattern_line(num - i, i)
  end

  (num - 1).downto(1) do |i|
    print_pattern_line(num - i, i)
  end

  def print_pattern_line(spaces, stars)
    print ' ' * spaces
    puts '* ' * stars
  end

end

pattern_program(3)


# Ex : For input 6, it should print this pattern :

def print_diamond(num)

  (0...num).each do |i|
    print_line(num - i - 1, i + 1)
  end

  (num - 2).downto(0) do |i|
    print_line(num - i - 1, i + 1)
  end


  def print_line(spaces, stars)
    print ' ' * spaces
    print '* ' * stars
    puts
  end
end

print_diamond(6)