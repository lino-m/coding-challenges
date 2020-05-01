require_relative '../models/rover'

class Rovers
  attr_reader :rovers
  def initialize(cvs_file_path)
    @cvs_file_path = cvs_file_path
    @rovers = []
  end

  def all
    @rovers
  end

  def add_rover(rover)
    @rovers << rover
  end

  def find(index) # lets change this to ID later
    @rovers[index]
  end
end
