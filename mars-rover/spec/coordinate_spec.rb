require_relative '../app/models/coordinate'

describe 'Coordinate', :coordinate do
  it 'Class: Takes two varibales (x & y) and return a Coodinate instance' do
    cl = Coordinate.new(20, 20)
    expect(cl).to be_a(Coordinate)
  end
end
