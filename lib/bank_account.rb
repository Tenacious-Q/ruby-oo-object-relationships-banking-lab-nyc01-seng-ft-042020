class BankAccount
    attr_accessor :transfer, :balance, :status 
    attr_reader :name 
    #attr_writer 


    def initialize(name, transfer="pending", status="open", balance=1000)
        @transfer = transfer 
        @name = name 
        @balance = balance 
        @status = status 
    end 

    def deposit(amount)
        @balance += amount 
    end 

    def display_balance
        "Your balance is $#{@balance}." 
    end 

    def valid?
        status == "open" && @balance > 0 
    end 

    def close_account
        #if @balance == 0 
        #    "closed" 
        #end 
        self.status = "closed"
    end 

end

