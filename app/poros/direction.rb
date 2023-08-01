class Direction
  attr_reader :directions

  def initialize(data)
    data[:maneuvers].each do |d|
      @directions = d[:narrative]
    end
  end
end