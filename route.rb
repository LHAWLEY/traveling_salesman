# cities = [
#  [[1, 2], [3, 4], [8, 7], [10, 12], [2, 4]],
#  [[1, 2], [3, 4], [8, 7], [10, 12], [2, 4]],
#  ...
#]

class TSP

  attr_reader :cities

  def initialize(cities)
    @cities = cities
    @combinations = cities.permutation.to_a
  end

  def get_total(combination)
    counter = 1
    total = get_distance([0, 0], combination[0])
    until counter == combination.length
      total += get_distance(combination[counter - 1], combination[counter])
      counter += 1
    end
    total + get_distance([0,0], combination[-1])
  end

  def get_distance(point_a, point_b)
    x_diff = (point_a[0] - point_b[0]).abs
    y_diff = (point_a[1] - point_b[1]).abs
    Math.hypot(x_diff, y_diff)
  end


  def route
    @combinations.min_by do |route|
      get_total(route)
    end
  end

  def dist
    get_total(route)
  end
end


