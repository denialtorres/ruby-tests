adder = lambda do |acc, arr|
  if arr.empty?
    acc
  else
    # to be filled in
    adder.call(acc + arr.first, arr.drop(1))
  end
end
