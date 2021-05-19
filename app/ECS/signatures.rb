class ID
  class <<self
    def renderable
      @renderable ||= 0b0_001 #'0_001'.to_i(2)
    end

    def sprite
      @sprite ||= 0b0_010 #'0_010'.to_i(2)
    end

    def label
      @label ||= 0b0_100 #'0_100'.to_i(2)
    end

    def player_control
      @player_control ||= 0b0_001_000 #'0_001_000'.to_i(2)
    end

    def map
      @map ||= 0b0_010_000 #'0_010_000'.to_i(2)
    end

    def map_object
      @map_object ||= 0b0_100_000
    end

    def grid_singleton
      @grid_singleton ||= 0b0_001_000_000
    end
  end
end
