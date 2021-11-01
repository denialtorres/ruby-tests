multiplier = lambda do |acc, arr|
  if arr.empty?
    acc
  else
    # to be filled in
    multiplier.call(acc * arr.first, arr.drop(1))
  end
end


# multiplier.call(2, [2,4,6]) => 96
