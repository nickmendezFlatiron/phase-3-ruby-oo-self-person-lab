require "pry"
class Person
  attr_reader :name , :happiness  
  attr_accessor :bank_account , :hygiene 

  
  def initialize(name)
    @name = name
    @happiness = 8
    @hygiene = 8
    @bank_account = 25
  end

  def happiness=(value)
    if value > 10
      # puts "Maximum value of 10"
      @happiness = 10
    elsif value < 0
      # puts "Minumum value of 0"
      @happiness = 0
    else
      @happiness = value
    end
  end

  def hygiene=(value)
    if value > 10
      @hygiene = 10
    elsif value < 0
      @hygiene = 0
    else
      @hygiene = value
    end
  end


  def happy?
    self.happiness > 7 ? true : false
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def get_paid(value)
    self.bank_account = bank_account + value
    "all about the benjamins"
  end
 
  def take_bath
    self.hygiene = hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end 
  
  def work_out
    self.happiness = happiness + 2
    self.hygiene = hygiene  - 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = happiness + 3
    friend.happiness += 3
    # binding.pry
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when  "politics"
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end 
  end
end 

