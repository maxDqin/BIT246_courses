for i in 1..3 do
  puts i
end

content = '["Ruby is an interpreted, high-level,\ngeneral-purpose programming language.\nRuby was designed and developed in the mid-1990s by Yukihiro \"Matz\" Matsumoto in Japan.\nRuby is dynamically typed and uses garbage collection."]'
@term = 'ruby'
if content =~ /.*#{@term}.*/i
  puts content
end