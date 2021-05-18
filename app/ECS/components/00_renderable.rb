class Components
  # If an entity can be rendered on screen
  class Renderable < BaseComponent
    attr_accessor :z

    def initialize(z: 0)
      @z = z
    end
  end
end
