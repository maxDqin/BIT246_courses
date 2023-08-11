# Pass the arrays into the method as an array of arrays

def arrays_to_hash(contact_Hash, arrays)

  # This was written based on the assumption that

  # contact_person, contact_email, contact_address, contact_phone will be

  # put in an array of arrays in this order.



  # Check to see if the number of elements in each arrays equal to each other

  elements_number = arrays[0].length

  arrays.each do |array|

    if array.length != elements_number

      puts "ERROR: Arrays has different number of elements"

      return -1

    end

  end



  # Assign the elements of arrays to hash

  for i in 0..elements_number-1 do

    contact_Hash[arrays[0][i]] = {:email => arrays[1][i], :address => arrays[2][i], :phone => arrays[3][i]}

  end



end





# Consider the following Ruby Arrays

contact_person =  ["Brown","Smith"]

contact_email =  ["brown@email.com","smith@email.com"]

contact_address = ["55 Main st.",  "44 High Dr."]

contact_phone = ["03-8765-4567" ,  "03-9876-3454"]



arrays = [contact_person, contact_email, contact_address, contact_phone]

contact_Hash = Hash.new



arrays_to_hash(contact_Hash, arrays)



p contact_Hash