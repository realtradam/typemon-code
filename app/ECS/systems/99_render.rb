class Systems
  class Render
    def self.run
      Components::Renderable.data.sort_by { |v| v[1].z }.each do |key, data|
        if !(Components::Sprite.id & Entity.signatures[key]).zero?
          #Components::Based.data[key].x += 2
          $gtk.args.outputs.sprites << Components::Sprite.data[key].set
        elsif !(Components::Label.id & Entity.signatures[key]).zero?
          $gtk.args.outputs.labels << Components::Label.data[key].set
        elsif !(Components::Map.id & Entity.signatures[key]).zero?
          #puts Components::Map.data[key].json.inspect
          Components::Map.data[key].json['layers'].each do |layer|
            layer['chunks'].each do |chunk|
              chunk['data'].each_slice(chunk['width']).with_index do |row, row_index|
                row.each_with_index do |tile, column_index|
                  unless tile.zero?
                    temp = Helper.get_tile(json_name: 'tileset_Room_Builder_16x16', tile_index: tile)
                    temp[:x] = Components::Map.data[key].x + (Components::Map.data[key].tilewidth * column_index) + chunk['x']
                    temp[:y] = Components::Map.data[key].y - (Components::Map.data[key].tileheight * (row_index + 1)) - chunk['y'] #REVERSED
                    temp[:w] = Components::Map.data[key].tilewidth
                    temp[:h] = Components::Map.data[key].tileheight
                    #puts60 temp.inspect
                    $gtk.args.outputs.sprites << temp
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
