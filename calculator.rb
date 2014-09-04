#def check_input (a)



def convert(a)
  if a == ("addition" || "+")
    a = "+"
  elsif a == ("subtraction" || "-")
    a = "-"
  elsif a == ("multiplication"|| "*")
    a = "*"
  elsif a == ("division" || "/")
    a = "/"
  elsif a == ("exponent" || "^")
    a = "^"
  elsif a == ("square root" || "√")
    a = "√"
  end
end

def calc(f, a, b)
  if f == "+"
    add(a, b)
  elsif f == "-"
    sub(a, b)
  elsif f == "*"
    mult(a, b)
  elsif f == "/"
    div(a, b)
  elsif f == "^"
    exp(a, b)
  elsif f == "√"
    sqrt(a)
  else
    nil
  end
end

def add(a, b)
  a + b
end

def sub(a, b)
  a - b
end

def mult(a, b)
  a * b
end

def div(a, b)
  a / b
end

def exp(a, b)
  a ** b
end

def sqrt(a)
  Math.sqrt (a)
end


puts "What kind of math do you want to do on this sunny day?"
input = gets.chomp
  if input == ("addition" || "+")
    input = "+"
  elsif input == ("subtraction" || "-")
    input = "-"
  elsif input == ("multiplication"|| "*")
    input = "*"
  elsif input == ("division" || "/")
      input = "/"
  elsif input == ("exponent" || "^")
      input = "^"
  elsif input == ("square root" || "√")
      input = "√"
  end

while input != ("addition" || "+" ||"subtraction" || "-" || "multiplication"|| "*" || "division" || "/" || "exponent" || "^" || "square root" || "√")
  puts "Give me something I can handle! Try again"
  input = gets.chomp
end
input = convert(input)


puts "What's the first number?"
num1 = nil
while num1.class != Fixnum
  num1 = gets.chomp
  if num1 == ""
    num1 = 0
  elsif num1 != "0" && num1.to_i == 0
    puts "Try using a number instead."
  else
    num1 = num1.to_i
  end
end


  if input != "√"
    puts "What's the second number?"
    num2 = nil
    while num2.class != Fixnum
      num2 = gets.chomp
      if num2 == ""
        num2 = 0
      elsif num2 != "0" && num2.to_i == 0
        puts "Try using a number instead."
      else
        num2 = num2.to_i
      end
    end
    # num2 = gets.chomp.to_f
  end

answer = calc(input, num1, num2)

if input != "√"
  puts "Wow, your answer is #{num1} #{input} #{num2} = #{answer}."
else
  puts "Wow, your answer is #{input} #{num1} = #{answer}."
end
