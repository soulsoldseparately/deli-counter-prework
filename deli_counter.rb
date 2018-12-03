# Write your code here.
katz_deli = []

def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    str_to_build = ""
    init_str = "The line is currently: "
    counter = 0 
    while counter < katz_deli.size
      if counter < katz_deli.size - 1 
        str_to_build = str_to_build + "#{counter+1}. #{katz_deli[counter]} "
      else
        str_to_build = str_to_build + "#{counter+1}. #{katz_deli[counter]}"
      end
      counter += 1
    end
    puts init_str + str_to_build
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli.size == 0 
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end