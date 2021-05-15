class ECS
  class Components
    # If an entity can be rendered on screen
    class Label < ECS::BaseComponent
      def self.id
        @id ||= ECS::ID.label
      end

      attr_accessor :x, :y, :text, :size_enum, :alignment_enum,
        :a, :r, :g, :b, :font, :vertical_alignment_enum

      def set(x: @x, y: @y, text: @text, size_enum: @size_enum, alignment_enum: @alignment_enum,
              a: @a, r: @r, g: @g, b: @b, font: @font, vertical_alignment_enum: @vertical_alignment_enum)
        [@x = x,
         @y = y,
         @text = text,
         @size_enum = size_enum,
         @alignment_enum = alignment_enum,
         @r = r,
         @g = g,
         @b = b,
         @a = a,
         @font = font,
         @vertical_alignment_enum = vertical_alignment_enum]
      end

      def primative_marker
        :label
      end
    end
  end
end