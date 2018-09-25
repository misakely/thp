class Account
  # name and balance are readable
  attr_reader :name, :balance

  # default value for balance = 100
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end

  public
  def display_balance(pin_number)
    if pin_number == pin
      puts "#{@balance}."
    else
      puts pin_eror
    end
  end

  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: €#{@balance}."
    else
      puts pin_error
    end
  end

  def deposit(pin_number, amount)
    if pin_number == pin
      @balance += amount
      puts "Deposit #{amount}. New balance: €#{@balance}."
    else
      puts pin_error
    end
  end

  private
  def pin
    @pin = 1234
  end

  def pin_error
    "Access denied: incorrect PIN."
  end

end

checking_account = Account.new("Compte chéque", 1000)
checking_account.withdraw(1234, 200)
checking_account.deposit(1234,50)
