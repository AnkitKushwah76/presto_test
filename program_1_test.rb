def squarer(nummbers)
    raise ArgumentError, 'Input must be an array of integers' unless  nummbers.is_a?(Array)

  return [] if nummbers.empty?
  nummbers.map {|num| num*2 }
end

p  squarer ([1,2,3])
p squarer ([])
# puts squarer ('hello')