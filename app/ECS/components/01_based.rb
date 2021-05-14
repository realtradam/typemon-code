class ECS
  class Components
    class Based < ECS::BaseComponent
      def self.id
        @id = '0010'.to_i(2)
      end

      attr_accessor :x, :y

      def initialize(x: 0, y:0)
        @x = x
        @y = y
      end
    end
  end
end
