class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @receiver = receiver
    @sender = sender
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? == true
    @receiver.valid? == true
  end

  def 


end
