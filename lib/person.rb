# your code goes here
class Person

    attr_reader :name 

    attr_accessor :hygiene, :happiness, :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    # def name
    #     @name
    # end

    # def name=(name)
    #     @name = name
    # end
    def bank_account
        @bank_account
    end

    def bank_account=(money)
        @bank_account = money
    end 

    def happiness
        @happiness
    end

    def hygiene
        @hygiene
    end

    def happiness=(num)
        @happiness = if num > 10
                        10
                    elsif num < 0
                        0
                    else
                        num
                    end
        end

    def hygiene=(num)
        @hygiene =  if num > 10
                        10
                    elsif num < 0
                        0
                    else 
                        num
        end 
    end

    def happy?
        self.happiness > 7
    end 

    def clean?
        self.hygiene > 7
    end 

    def get_paid(amt)
        @bank_account = amt + 25
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2 
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end 
    end 

end