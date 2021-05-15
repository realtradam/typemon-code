class ECS
  class Components
    # If an entity can be rendered on screen
    class PlayerControl < ECS::BaseComponent
      def self.id
        @id ||= ECS::ID.player_control
      end

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
end
