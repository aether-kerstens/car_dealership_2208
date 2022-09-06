class Car

  attr_reader :type, :monthly_payment, :loan_length

  def initialize(type, monthly_payment, loan_length)
    @type = type
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def make
    type.split.first
  end

  def model
    type.split.last
  end

  def total_cost
    monthly_payment * loan_length
  end
end
