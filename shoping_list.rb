products = []

loop do
puts "Witaj w programie Lista Zakupow!"
puts "1. Dodaj Produkt"
puts "2. Usuń Produkt"
puts "3. Wyświetl listę zakupow"
puts "4. Wyjście"
puts "Wybierz opcję: "

user_choice = gets.chomp.to_i

case user_choice
when 1
    puts "Podaj nazwe produktu: "
    product_name = gets.chomp
    puts "Podaj ilosc produktu: "
    product_amount = gets.chomp.to_i

    products.push({ name: product_name, quantity: product_amount })
    puts "Produkt #{product_name} (ilosc: #{product_amount}) zostal dodany do listy zakupow."
when 2
    puts "Podaj nazwe produktu do usuniecia: "
    product_to_delete = gets.chomp
    index_to_delete = products.index { |product| product[:name] == product_to_delete }
    if index_to_delete
      deleted_product = products.delete_at(index_to_delete)
      puts "Produkt '#{deleted_product[:name]}' został usunięty z listy."
    else
      puts "Nie znaleziono produktu o nazwie '#{product_to_delete}'."
    end
when 3
    puts "Lista zakupow: "
    products.each_with_index do |product, index|
        puts "#{index + 1}. #{product[:name]} (#{product[:quantity]})"
      end
when 4
    puts "Dziękujemy za korzystanie z programu Lista Zakupów!"
    break
else
    puts "Niepoprawna opcja. Wybierz opcję od 1 do 4." 
end
end
