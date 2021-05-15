class ECS
  class Components
    # If an entity can be rendered on screen
    class Renderable < ECS::BaseComponent
      def self.id
        @id ||= ECS::ID.renderable
      end

      attr_accessor :z

      def initialize(z: 0)
        @z = z
      end
=begin
      # 1. Create a serialize method that returns a hash with all of
      #    the values you care about.
      def serialize
        { z: z }
      end

      # 2. Override the inspect method and return ~serialize.to_s~.
      def inspect
        serialize.to_s
      end

      # 3. Override to_s and return ~serialize.to_s~.
      def to_s
        serialize.to_s
      end
=end
    end
  end
end
