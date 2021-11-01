def complement(predicate)
  lambda do |value|
    not predicate.call(value)
  end
end


is_even = lambda do |x|
  x % 2 == 0
end

# 2.6.6 :128 > complement(is_even).call(5)
#  => true
# 2.6.6 :129 > complement(is_even).call(4)
#  => false
