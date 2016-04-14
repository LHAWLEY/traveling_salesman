require_relative 'route'

describe "Traveling Salesman Problem" do
  let(:cities) { [[1, 2], [3, 4], [8, 7], [10, 12], [2, 4]] }

  it 'determines the shortest route' do
    tsp = TSP.new(cities)
    answer_route = [[3, 4], [8, 7], [10, 12], [2, 4], [1, 2]]

    expect(tsp.route == answer_route || tsp.route == answer_route.reverse).to be true
  end

  it 'calculates length of the best route' do
    tsp = TSP.new(cities)

    expect(tsp.dist.round(2)).to eq 32.00
  end

  it 'calculates the distance between two poines' do
    tsp = TSP.new(cities)
    expect(tsp.get_distance([0,3], [4,0])).to eq 5
  end
end