
# https://gist.github.com/iangreenleaf/b206d09c587e8fc6399e




farray = ["aaaa",  "grapes", "oranges", "cherries",  "avocados"]
farray.each do |fruit|
  puts fruit if fruit =~ /a$/
end