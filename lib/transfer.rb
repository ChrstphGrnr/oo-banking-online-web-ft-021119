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

  def execute_transaction

    if self.valid? && sender.balance > amount
      sender.balance -= amount
      receiver.transfer(amount)
      @status = "completed"
    else
      status = "rejected"
      "The transaction was rejected."

    end
  end

end
