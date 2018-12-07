require './slot'
require './snack'
require './terminal_formatter'
class VendingMachine

  def initialize(machine_content_data)
    @slots = {}
    @accepted_coins = ['1', '5', '10', '25', '50', '100']
    @current_balance = 0
    load_contents(machine_content_data)
  end

  def get_contents
    TerminalFormatter.print_contents(@slots)
  end

  def accept_money
    coin = TerminalFormatter.ask_for_money
    if @accepted_coins.include?(coin)
      TerminalFormatter.print_current_balance(@current_balance)
    else
      TerminalFormatter.invalid_coin
      self.accept_money
    end
  end

  def valid_coins

  end

  def purchase

  end

  private

  def load_contents(machine_content_data)
    # This method should be broken out into a 'stocker' class
    slots = machine_content_data['contents'][0]

    slots.each do |slot_data|
      slot_cordinate = slot_data[0]
      slot_cost = slot_data[1]['cost']
      slot_cap = slot_data[1]['capacity']
      slot = Slot.new(slot_cordinate, slot_cost, slot_cap)

      snacks = slot_data[1]['contents']
      slot.stock(snacks)

      @slots[slot.slot_cordinate] = slot
    end
  end
end
