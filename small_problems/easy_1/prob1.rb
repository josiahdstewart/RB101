# takes two arguments (str, +int), prints string as many as int indicates

def repeat(string, int)
  int.times { puts string }
end

repeat('coolio', 5)
