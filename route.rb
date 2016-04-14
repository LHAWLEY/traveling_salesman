# cities = [[1, 2], [3, 4], [8, 7], [10, 12], [2, 4]]

class TSP

  attr_reader :cities

  def initialize(cities)
    @cities = cities
  end

  def get_total
    counter = 1
    total = get_distance([0, 0], cities[0])
    until counter == cities.length
      p total
      total += get_distance(cities[counter - 1], cities[counter])
      counter += 1
    end
    total + get_distance([0,0], cities[-1])
  end

  def get_distance(point_a, point_b)
    x_diff = (point_a[0] - point_b[0]).abs
    y_diff = (point_a[1] - point_b[1]).abs
    Math.hypot(x_diff, y_diff)
  end

  def all_possible_route_configurations
    # build a collection of all possible orders for given points

  end

  def find_best_route
    # map over collection of possible routes with the get total distance function.
    # return shortest distance.
  end
end

cities = [[1, 2], [3, 4], [8, 7], [10, 12], [2, 4]]

tsp = TSP.new(cities)
p tsp.get_total