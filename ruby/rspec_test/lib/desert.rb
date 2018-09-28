class Desert
  attr_reader :type, :amount
  def initialize(type,amount)

    raise 'Amount must be a number' unless amount.is_a?(Integer)

    @type = type
    @amount = amount < 50 ? amount : 'giant amount'
  end
end
