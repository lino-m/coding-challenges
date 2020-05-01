require_relative '../models/field'

class Mars
  attr_reader :fields

  def initialize(cvs_file_path)
    @cvs_file_path = cvs_file_path
    @fields = []
  end

  def all
    @fields
  end

  def add_field(field)
    @fields << field
  end

  def find(index) # lets change this to ID later
    field = @fields[index]
  end
end
