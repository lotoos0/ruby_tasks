puts "Witaj w grze zgadywanie liczb!"
puts "Komputer wybrał liczbe z zakresu od 1 do 100"


num = rand(0...101)


loop do
    puts "Zgadnij liczbe: "
    player_num = gets.chomp.to_i

    if(num == player_num)
        puts "GRATULUJE WYGRANEJ! Szczesliwa liczba to #{num}!"
        break
    else
        if(player_num < num)
            puts "Za malo! Sprobuj pownownie!"
        elsif (player_num > num)
            puts "Za duzo! Sprobuj ponownie!"
        end
    end
end

