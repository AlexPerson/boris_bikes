require_relative 'bike_class.rb'
class DockingStation
	def initialize
		@bikes = []
	end

	def dock(bike)
		fail 'Docking station full' if @bikes.count >= 20
		@bikes << bike
	end	

	def release_bike
		fail 'No bikes available' if  @bikes.empty?
		@bikes.pop
	end
end
