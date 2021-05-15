class ECS
  class Components
    # If an entity can be rendered on screen
    class Sprite < ECS::BaseComponent
      def self.id
        @id ||= ECS::ID.sprite
      end

      attr_accessor :x, :y, :w, :h, :path, :angle, :a, :r, :g, :b,
        :source_x, :source_y, :source_w, :source_h,
        :tile_x, :tile_y, :tile_w, :tile_h,
        :flip_horizontally, :flip_vertically,
        :angle_anchor_x, :angle_anchor_y

      def set(x: @x, y: @y, w: @w, h: @h, path: @path, angle: @angle, a: @a, r: @r, g: @g, b: @b,
              source_x: @source_x, source_y: @source_y, source_w: @source_w, source_h: @source_h,
              tile_x: @tile_x, tile_y: @tile_y, tile_w: @tile_w, tile_h: @tile_h,
              flip_horizontally: @flip_horizontally, flip_vertically: @flip_vertically,
              angle_anchor_x: @angle_anchor_x, angle_anchor_y: @angle_anchor_y)
        [@x = x,
         @y = y,
         @w = w,
         @h = h,
         @path = path,
         @angle = angle,
         @a = a,
         @r = r,
         @g = g,
         @b = b,
         @source_x = source_x,
         @source_y = source_y,
         @source_w = source_w,
         @source_h = source_h,
         @tile_x = tile_x,
         @tile_y = tile_y,
         @tile_w = tile_w,
         @tile_h = tile_h,
         @flip_horizontally = flip_horizontally,
         @flip_vertically = flip_vertically,
         @angle_anchor_x = angle_anchor_x,
         @angle_anchor_y = angle_anchor_y]
      end

      def primative_marker
        :sprite
      end
    end
  end
end
