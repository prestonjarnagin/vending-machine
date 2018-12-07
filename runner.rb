require 'pry'
require 'json'
require './vending_machine'

loop do
  contents = JSON.parse(File.read('./tiny_vending_machine.json'))
  vend = VendingMachine.new(contents)
  puts 'Hello, please enter a command:'
  input = gets.chomp
  puts # Empty Line

  commands = {
    'c' => :get_contents,
    'i' => :accept_money,
    'v' => :valid_coins,
    'p' => :purchase
  }
  vend.send(commands[input])
end
