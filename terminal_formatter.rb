class TerminalFormatter

  def self.print_contents(slots)
    slots.each do |slot_index, slot|
      puts "Slot #{slot.slot_cordinate}"
      puts "Cost: #{slot.cost}"
      puts slot.first_snack_name
      puts
    end
  end

  def self.ask_for_money
    puts 'Insert Coin> '
    gets.chomp
  end

  def self.invalid_coin
    puts 'That coin is inavlid. Please enter a valid coin'
    puts '(1, 5, 10, 25, 50, 100)'
  end

end
