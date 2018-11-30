require_relative 'bike.rb'

class DockingStation

  attr_reader :bike
  def initialize
    @bike_collection = []
    @max_capacity = 20
  end

  def release_bike
    fail "No Bikes Available" if empty?
    @bike_collection.pop
  end

  def dock(bike)
    fail "No Space Available" if full?
    @bike_collection << bike
  end

private

  def full?
    @bike_collection.count == @max_capacity
  end

  def empty?
    @bike_collection.empty?
  end
end
