# 28 Intro to Numbers and the .class Method
p 5.class
p 0.class

p 5.7.class
p -9.3.class

p 9999999999999999999999.class

# 29 Concert Numbers to Strings and Vice Versa
puts
p "29 Concert Numbers to Strings and Vice Versa"
str = "5"
p str.class
p str.to_i.class

number = 10
p number.class
p number.to_s.class

p number.to_f
p number.to_f.class

pi = 3.14
p pi.to_i

# Intro to Booleans
puts
p "Intro to Booleans"
p 1+1 <= 1
handsome = true
p handsome.class
diet=false
p diet.class