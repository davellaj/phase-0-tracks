puts "before:"
def say_hello
  puts "Hello World"
end
say_hello


puts "after:"
def say_hello
  puts "Hello World"
  yield("Julie", "Jamie")
end

say_hello {|name1, name2| puts "hello #{name1} and #{name2}"}