puts "wprowadz pierwsza liczbe: "
num1 = gets.chomp.to_i

puts "wprowadz druga liczbe: "
num2 = gets.chomp.to_i

puts "wprowadz operator(+,-,*,/): "
op = gets.chomp

if(op == "+")
    sc = num1 + num2 
elsif(op == "-")
    sc = num1 - num2
elsif(op == "*")
    sc = num1 * num2
elsif(op == "/")
    if(num2 == 0)
        puts "NIE DZIELIMY PRZEZ 0!"
    else
        sc = num1 / num2
    end
else
    puts "Nieznany operator!"
end
    if(num2 == 0)
        puts ""
    else
        puts "wynik to: #{sc}"
    end

