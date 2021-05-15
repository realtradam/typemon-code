
=begin
files = ""
files = `ls -B1 #{__dir__}`

File.write("#{__dir__}/_", (files.split - ["_"]).map{|file| "require 'lib/#{libname}/#{file}'"}.join("\n"))
=end
move = '0001'.to_i(2)
base = '0010'.to_i(2)
both = '0011'.to_i(2)
@thing0 = ECS::Entity.new(move)
puts @thing0
ECS::Entity.new(base)
ECS::Entity.new(both)

def tick args
  ECS::Systems.constants.each do |constant|
    ECS::Systems::const_get(constant).run
  end
  args.outputs.labels  << [640, 500, ECS::Components::TestComponent.data[@thing0.id].x, 5, 1] 
  args.outputs.labels  << [640, 460, @thing0, 5, 1]
  args.outputs.labels  << [640, 420, 'Join the Discord! http://discord.dragonruby.org', 5, 1]
  args.outputs.sprites << [576, 280, 128, 101, 'dragonruby.png']
  @render = Sprite.objects[1] if args.inputs.keyboard.key_held.a
  @render = Sprite.objects[0] if args.inputs.keyboard.key_held.s
  args.outputs.sprites << @render
end
