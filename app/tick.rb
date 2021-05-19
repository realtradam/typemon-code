$gtk.args.grid.origin_top_left!
#$gtk.args.grid.origin_bottom_left!
#Components::DebugSingleton.data = true

thing0 = Entity.new(ID.sprite,
                    ID.renderable,
                    ID.player_control)
Components::Sprite.data[thing0.id].set(x: 256, y: 128, w: 64, h: 64, path: 'dragonruby.png')
Components::Renderable.data[thing0.id].z = 10
#Components::PlayerControl.data[thing0.id].set(north: 's', south: 'w')

#@thing0 = Entity.new(ID.sprite,
#                     ID.renderable,
#                     ID.player_control)
#@thing3 = Entity.new(ID.sprite,
#                     ID.renderable,
#                     ID.player_control)
#Components::Sprite.data[@thing3.id].set(x: 576, y: 580,
#                                        w: 128, h: 101,
#                                        path: 'assets/non-free/Modern_Interiors/1_Interiors/16x16/Room_Builder_16x16.png',
#                                        source_x: 0, source_y: 0, source_w: 16, source_h: 16)

#json_tiles = Helper.get_json_tiles('tileset_Room_Builder_16x16')
#tile_number = 100
#source_height_tiles = (tile_number.to_i / json_tiles['columns'].to_i).to_i
#hash = { w: json_tiles['tilewidth'],
#         h: json_tiles['tileheight'],
#         path: 'assets/non-free/Modern_Interiors/1_Interiors/16x16/Room_Builder_16x16.png',
#         source_x: ((tile_number % json_tiles['columns']) - 1) * json_tiles['tilewidth'],
#         source_y: json_tiles['imageheight'] - ((source_height_tiles + 1) * json_tiles['tileheight']),
#         source_w: json_tiles['tilewidth'],
#         source_h: json_tiles['tileheight'] }
#puts hash.inspect

#Helper.get_tile(
#Components::Sprite.data[thing0.id].set(Helper.get_tile('tileset_Room_Builder_16x16', 936))
#Components::Sprite.data[thing0.id].set(x: 576, y:280,
#                                       w:128, h: 101)
@thing1 = Entity.new(ID.label, ID.renderable)
#Components::Label.data[@thing1.id].set(x: $gtk.args.grid.center[0], y: $gtk.args.grid.center[1],
#                                       text: $gtk.args.grid.center.inspect,
#                                       size_enum: 5,
#                                       alignment_enum: 1)
#Components::Renderable.data[@thing1.id].z = 5

@thing2 = Entity.new(ID.label, ID.renderable)
Components::Label.data[@thing2.id].set(x: 740, y: 520,
                                       text: 'It Werks',
                                       size_enum: 5,
                                       alignment_enum: 1)
Components::Renderable.data[@thing2.id].z = 5

#@map = Entity.new(ID.map, ID.renderable)
#Components::Map.data[@map.id].set(x: 0,
#                                  y: 0,
#                                  tilewidth: 128,
#                                  tileheight: 128,
#                                  json_name: 'map_test_map')

@map2 = Entity.new(ID.map, ID.renderable)
Components::Map.data[@map2.id].set(x: 0,
                                   y: 0,
                                   tilewidth: 64,
                                   tileheight: 64,
                                   json_name: 'map_test2')
Components::Renderable.data[@map2.id].z = 4


#Helper.get_json_tiles('map_test')
@x = 0
def tick args
  @x += 1
  @y = @x / 6
  Components::Label.data[@thing2.id].text = "Seconds Passed: #{(@y.to_i).to_s.insert(-2,'.')}"
  Systems.constants.each do |constant|
    Systems.const_get(constant).run
  end
end
