class Snack

  attr_reader :snack_type

  def initialize(snack_type)
    @snack_type = snack_type[0]
  end

end
