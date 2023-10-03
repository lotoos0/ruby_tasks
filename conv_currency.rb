rate_usd = 3.56
rate_eur = 4.59
rate_gbp = 5.78

loop do
  puts "Witaj w programie Przeliczanie Walut!"

  puts "Dostepne waluty:"
  puts "1. USD - Dolar amerykanski"
  puts "2. EUR - Euro"
  puts "3. GBP - Funt brytyjski"
  puts "4. Zakoncz program"

  puts "\nWybierz walute chcesz przeliczyc (np. USD): "
  cur_1 = gets.chomp.upcase
  puts "Wybierz walute, na ktora chcesz przeliczyc (np. EUR): "
  cur_2 = gets.chomp.upcase
  puts "Podaj kwote do przeliczenia: "
  amount = gets.chomp.to_f

  case cur_1
  when "USD"
    case cur_2
    when "EUR"
      sc_pln = amount * rate_usd
      sc_eur = sc_pln * rate_eur
      puts "Twoje #{amount} USD to #{sc_eur} EUR!"
    when "GBP"
      sc_pln = amount * rate_usd
      sc_gbp = sc_pln * rate_gbp
      puts "Twoje #{amount} USD to #{sc_gbp} GBP!"
    else
      puts "Niepoprawna waluta docelowa: #{cur_2}!"
    end
  when "EUR"
    # Obsługa przeliczeń EUR na inne waluty
    # ...
  when "GBP"
    # Obsługa przeliczeń GBP na inne waluty
    # ...
  when "ZAKONCZ"
    puts "Dziekuje za skorzystanie!"
    break
  else
    puts "Niepoprawna waluta początkowa: #{cur_1}!"
  end
end
