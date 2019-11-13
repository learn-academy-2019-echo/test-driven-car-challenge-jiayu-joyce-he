require 'rspec'
require_relative 'car'

# Story:	As a programmer, I can make a vehicle. Hint:	Test that Vehicle.new does not raise any errors.

describe "Vehicle" do 
  a_vehicle = Vehicle.new
  it "vehicle has to be a thing" do
    expect {Vehicle.new}.to_not raise_error
  end 
  
  # Story:	As a programmer, I can tell which model year a vehicle is from. Model years never change. Hint:	Make model year part of the initialization.
  
  it "has a model year that never change" do 
    expect {a_vehicle.make}.to_not raise_error
  end 
  
  # Story:	As a programmer, I can turn on and off the lights on a given Vehicle. Hint:	Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
  
  it "has lights I can turn on and off" do
    expect(a_vehicle.lights_switch).to be true
  end 
  
  # Story:	As a programmer, I can determine if the lights are on or off. Lights start in the off position.
  it "can determine if a light is on of off with default off" do 
    b_vehicle = Vehicle.new
    expect(b_vehicle.lights_on).to be false
  end 
  
  # Story: As a programmer, I can signal left and right. Turn signals starts off.
  it "can signal left or right" do 
    expect(a_vehicle.turn_signal).to eq 'off'
  end 
  
  
end 


describe "Car" do
  a_car = Car.new
  # Story:	As a programmer, I can make a car. Hint:	Test that creating an instance of the new class does not raise any errors.
  it "car has to be a thing" do 
    expect {Car.new}.to_not raise_error
  end 
  
  # Story:	As a programmer, I can tell how many wheels a car has; default is four. Hint:	initialize the car to have four wheels, then create a method to return the number of wheels.
  it "has four wheels by default" do
    expect(a_car.wheels).to be 4  #remember to use () instead of {} here as it takes an argument
  end 
  
  # Story:	As a programmer, I can honk the horn. Hint:	When I call honk_horn, I get a "BEEP!".
  it "returns 'BEEP!' if I honk the horn" do 
    expect(a_car.honk).to eq "BEEP!"
  end 
  
  # Story:	As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
  it "can determine the speed of a car" do
    expect(a_car.speed).to be >= 0 
  end 

  # Story: As a programmer, I can call upon a car to tell me all it's information. Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
  it "can tell me all its information" do 
    expect(a_car.to_s).to be_a String
  end 
end 


# Story:	As a programmer, I can make a Toyota car. Hint:	Test that class Toyota which inherits from class Car can be created.

describe "Toyota" do 
  a_toyota = Toyota.new
  
  it "is a thing" do 
    expect{Toyota.new}.to_not raise_error
  end 
  
  # Story:	As a programmer, I can honk the horn of a Toyota car which makes the sound "whoop".
  
  it "can make the sound 'whoop' if I honk" do 
    expect(a_toyota.honk).to eq "whoop"
  end 
  
  # Story:	As a programmer, I can speed my Toyotas up by 7 km/h per acceleration.
  it "can accelerate by 7km/h" do
    expect(a_toyota.accelerate).to eq(7)
  end 
  
  # Story:	As a programmer, I can slow my Toyotas down by 5 km/h per braking.
  it "can break 5km/h" do
    expect(a_toyota.brake).to eq(2)
  end 
end 


# Story:	As a programmer, I can make a Tata car.

describe "Tata" do
  a_tata = Tata.new
  it "is a thing" do 
    expect{Tata.new}.to_not raise_error
  end 
  
  # Story:	As a programmer, I can honk the horn of a Tata car - "beep".
  
  it "make the sound 'beep' if I honk" do 
    expect(a_tata.honk).to eq 'beep'
  end 
  
  # Story:	As a programmer, I can speed my Tatas up by 2 km/h per acceleration.
  it "can accelerate by 2km/h" do 
    expect(a_tata.accelerate).to eq(2)
  end
  
  # Story:	As a programmer, I can slow my Tatas down by 1.25 km/h per braking.
  it "can brake at 1.25 km/h" do
    expect(a_tata.brake).to eq(0.75)
  end 
  
end 


# Story:	As a programmer, I can make a Tesla car.

describe "Tesla" do
  a_Tesla = Tesla.new
  
  it "is a thing" do 
    expect{Tesla.new}.to_not raise_error
  end 
  
  # Story:	As a programmer, I can honk the horn of Tesla - "Beep-bee-bee-boop-bee-doo-weep".
  it "makes the sound 'Beep-bee-bee-boop-bee-doo-weep' when I honk" do 
    expect(a_Tesla.honk).to eq 'Beep-bee-bee-boop-bee-doo-weep'
  end 
  
  # Story:	As a programmer, I can speed my Teslas up by 10 km/h per acceleration.
  it "can accelerate by 10km/h" do 
    expect(a_Tesla.accelerate).to eq(10)
  end 
  
  # Story:	As a programmer, I can slow my Teslas down by 7 km/h per braking.
  it "can brake by 7km/h" do 
    expect(a_Tesla.brake).to eq(3)
  end 
end 


# Story: As a programmer, I can store and retrieve all of my cars from a garage. Hint: "Garage" is a noun, "store" and "retrieve" are verbs.
#
# Story:	As a programmer, I can sort the cars in my garage based on model year.
#
# Story:	As a programmer, I can sort the cars in my garage based on model. Hint:	Sort based on class name.
#
# Story:	As a programmer, I can sort the cars in my garage based on model and then year. Hint: Find out how the spaceship operator can help you with an array.
