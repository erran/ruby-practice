# NOTE: In Ruby %i[dog cat orange banana] would be prettier
stuff = [:dog, :cat, :orange, :banana]
puts "stuff is: #{stuff.inspect}"

# How can you slice this array to create a new array [:cat, :orange]
puts "stuff.slice(1, 2) is: #{stuff.slice(1, 2).inspect}"

# Add the element :apple on to the end of the array.
stuff << :apple
puts "stuff is: #{stuff.inspect}"

# Now take :apple back off again
stuff.pop
puts "stuff is: #{stuff.inspect}"

# Add the element :fish to the start of the array.
stuff.unshift :fish
puts "stuff is: #{stuff.inspect}"

# Now remove the element :fish.
stuff.shift
puts "stuff is: #{stuff.inspect}"
