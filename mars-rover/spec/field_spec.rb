require_relative '../app/models/field'
require_relative '../app/models/coordinate'

describe 'Field', :field do
  it 'Field Properties: Should have have x and y axes' do
    properties = { size_x: 20, size_y: 20 }
    field = Field.new(properties)
    expect(field).to be_a(Field) # to be_a ->
  end

  it 'Method: Returns the size of a field' do
    field = Field.new(size_x: 20, size_y: 20)
    expect(field.field_size).to eq('X: 20, Y: 20')
  end

  describe '#create_field' do
    it 'Method: Returns an array of coordinates that make up the field' do
      field = Field.new(size_x: 20, size_y: 20)
      expect(field.field_coordinates.length).to eq(441)
    end
  end
end
