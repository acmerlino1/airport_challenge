require 'plane'

class Airport
    attr_reader :capacity

    DEFAULT_CAPACITY = 20

    def initialize(capacity=DEFAULT_CAPACITY)
        @capacity = capacity
        @planes = []
    end

    def land(plane)
        raise "Cannot land plane due to stormy weather" if weather == "stormy"
        raise "Cannot land because airport is full" if full?
        @planes << plane
    end

    def take_off(plane)
        raise "Cannot take off due to stormy weather" if weather == "stormy"
        @planes.pop
    end

    def full?
        @planes.count >= @capacity
    end

    def weather
        return "stormy" if rand_number == 1
        return "sunny"
    end

    def rand_number
        rand(1..5)
    end
end