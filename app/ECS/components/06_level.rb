class Components
  # If an entity can be rendered on screen
  class Level < BaseComponent
    attr_accessor :z

    def initialize
      @grid = [[]] #Array.new(1) { Array.new(1) }
    end

    def set(x: x, y: y, **opts)
      smart_array(x, y).merge(opts)
    end

    # Things that the smart_array holds
    #
    # player: is the player in the square?
    # hitbox: true/false
    # interact: id/false
    def smart_array(x, y)
      @grid[x] = [] if @grid[x].nil?
      @grix[x][y] = {} if @grid[x][y].nil?
      @grid[x][y]
    end
  end
end
