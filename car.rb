class Vehicle
    attr_reader :make, :lights_on, :turn_signal

    def initialize
        @make = 'undefined'
        @lights_on = false
        @turn_signal = 'off'
    end 
    
    def lights_switch
        @lights_on = !@lights_on
    end
    
    def turn_signal= left_or_right
        @turn_signal = left_or_right
    end 
    
end

class Car < Vehicle
    
    attr_accessor :wheels, :speed
    attr_reader :make
    
    def initialize
        super()
        @wheels = 4
        @honk_sound = "BEEP!"
        @speed = 0
        @acceleration = 0
        @brake_speed = 0
        @make = 'vehicle'
    end 
    
    def honk
        @honk_sound
    end 
    
    def accelerate
        @speed += @acceleration
    end 
    
    def brake
        @speed -= @brake_speed
    end 
    
    def print_information
        "my vehicle has #{@wheels} wheels, honks like #{@honk_sound}, accelerates at #{@acceleration}km/h, brakes at #{@brake_speed}km/h, and its current speed is #{@speed}km/h"
    end
end

class Toyota < Car
    attr_accessor :wheels, :speed
    attr_reader :make
    
    def initialize
        super()
        @honk_sound = "whoop"
        @acceleration = 7
        @brake_speed = 5
    end
    
end 


class Tata < Car
    attr_accessor :wheels, :speed
    attr_reader :make
    
    def initialize
        super()
        @honk_sound = "beep"
        @acceleration = 2
        @brake_speed = 1.25
        
    end 
end 

class Tesla < Car
    attr_accessor :wheels, :speed
    attr_reader :make
    
    def initialize
        super()
        @honk_sound = "Beep-bee-bee-boop-bee-doo-weep"
        @acceleration = 10
        @brake_speed = 7
    end 
    
    # def print_information
    #     super().to_s
    # end
end 
