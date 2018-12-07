class Slot
  attr_reader :slot_cordinate,
              :snacks,
              :cost

  def initialize(slot_cordinate, cost, capacity)
    @slot_cordinate = slot_cordinate
    @cost = cost
    @capacity = capacity
    @snacks = []
  end

  def first_snack_name
    if @snacks.first
      @snacks.first.snack_type
    else
      "<<<Tragically, Nothing>>>"
    end
  end

  def stock(snack_data)
    snack_data.each do |snack|
      @snacks << Snack.new([snack['type']])
    end
  end
end
