class ID
  class <<self
    def renderable
      0b0_001
    end

    def sprite
      0b0_010
    end

    def label
      0b0_100
    end

    def player_control
      0b0_001_000
    end

    def map
      0b0_010_000
    end

    def interactable
      0b0_100_000
    end

    def level
      0b0_001_000_000
    end

    def collidable
      0b0_010_000_000
    end
  end
end
