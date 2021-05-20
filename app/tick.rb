$gtk.args.grid.origin_top_left!
Components::DebugSingleton.data = true

@thing0 = Entity.new(ID.sprite,
                     ID.renderable,
                     ID.player_control,
                     ID.overworld)
Components::Sprite.data[@thing0.id].set(x: 256, y: 128, w: 64, h: 64, path: 'dragonruby.png')
Components::Renderable.data[@thing0.id].z = 10
Components::Overworld.data[@thing0.id].set(x: 4, y: 2)

#@thing1 = Entity.new(ID.label, ID.renderable)

@thing2 = Entity.new(ID.label, ID.renderable)
Components::Label.data[@thing2.id].set(x: 740, y: 520,
                                       text: 'It Werks',
                                       size_enum: 5,
                                       alignment_enum: 1)
Components::Renderable.data[@thing2.id].z = 5

@map2 = Entity.new(ID.map, ID.renderable, ID.overworld)
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
