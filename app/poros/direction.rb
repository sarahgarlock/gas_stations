class Direction

  def initialize(data)
    data[:maneuvers].each do |d|
      @directions = d[:narrative]
    end
  end
end