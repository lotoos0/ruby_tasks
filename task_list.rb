# Inicjalizacja pustej tablicy na zadania
tasks = []

loop do
  puts "Witaj w programie Lista Zadań!"
  puts "1. Dodaj zadanie"
  puts "2. Usuń zadanie"
  puts "3. Wyświetl listę zadań"
  puts "4. Wyjście"
  puts "Wybierz opcję: "
  
  choice = gets.chomp.to_i
  
  case choice
  when 1
    puts "Podaj nazwę zadania: "
    task_name = gets.chomp
    puts "Podaj termin zadania (RRRR-MM-DD): "
    task_date = gets.chomp
    tasks.push({ name: task_name, date: task_date })
    puts "Zadanie '#{task_name}' zostało dodane do listy."
  when 2
    puts "Podaj nazwę zadania do usunięcia: "
    task_name = gets.chomp
    index_to_delete = tasks.index { |task| task[:name] == task_name }
    if index_to_delete
      deleted_task = tasks.delete_at(index_to_delete)
      puts "Zadanie '#{deleted_task[:name]}' zostało usunięte z listy."
    else
      puts "Nie znaleziono zadania o nazwie '#{task_name}'."
    end
  when 3
    puts "Lista zadań:"
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task[:name]} (#{task[:date]})"
    end
  when 4
    puts "Dziękujemy za korzystanie z programu Lista Zadań!"
    break
  else
    puts "Niepoprawna opcja. Wybierz opcję od 1 do 4."
  end
end
