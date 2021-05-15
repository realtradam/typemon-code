class ECS
  class ID
    class <<self
      def renderable
        @renderable ||= '0_001'.to_i(2)
      end

      def sprite
        @sprite ||= '0_010'.to_i(2)
      end

      def label
        @label ||= '0_100'.to_i(2)
      end

      def player_control
        @player_control ||= '1_000'.to_i(2)
      end
    end
  end
end


