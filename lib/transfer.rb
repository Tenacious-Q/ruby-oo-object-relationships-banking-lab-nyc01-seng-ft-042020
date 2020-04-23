class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  # initialize
  #   can initialize a Transfer
  #   initializes with a sender
  #   initializes with a receiver
  #   always initializes with a status of 'pending'
  #   initializes with a transfer amount    (we can tell it should be 50 because of the error)
  def initialize(sender, receiver, amount=50, status="pending")
    @sender = sender 
    @receiver = receiver 
    @amount = amount
    @status = status 
  end 

  # #valid?
  # can check that both accounts are valid
  # calls on the sender and receiver's #valid? methods
  def valid?
    sender.valid? && receiver.valid? 
  end 

  def execute_transaction
  end 

  def reverse_transfer
  end 



end
