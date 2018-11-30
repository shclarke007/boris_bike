require_relative 'bike.rb'

class DockingStation

  attr_reader :bike
  def initialize
    @bike_collection = []
    @max_capacity = 20
  end

  def release_bike
    fail "No Bikes Available" if @bike_collection.empty?
    @bike_collection.pop
  end

  def dock(bike)
    fail "No Space Available" if @bike_collection.count == @max_capacity
    @bike_collection << bike
  end

end
  #def release_bike
  #raise 'Not enough bikes' if empty?
  #@bikes.pop
#end 
