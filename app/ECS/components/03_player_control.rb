class Components
  # Gives control(keyboard or otherwise) over an object
  class PlayerControl < BaseComponent
    attr_accessor :north, :south, :east, :west

    def initialize(north: 'w', south: 's', east: 'd', west: 'a')
      @north = north
      @south = south
      @east = east
      @west = west
    end

    def set(north: 'w', south: 's', east: 'd', west: 'a')
      @north = north
      @south = south
      @east = east
      @west = west
    end
  end
end
