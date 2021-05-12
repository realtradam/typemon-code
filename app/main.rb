require 'app/sprites.rb'
def tick args
  args.outputs.labels  << [640, 500, 'Hello World!', 5, 1]
  args.outputs.labels  << [640, 460, 'Go to docs/docs.html and read it!', 5, 1]
  args.outputs.labels  << [640, 420, 'Join the Discord! http://discord.dragonruby.org', 5, 1]
  args.outputs.sprites << [576, 280, 128, 101, 'dragonruby.png']
  @render = Sprite.objects[1] if args.inputs.keyboard.key_held.a
  @render = Sprite.objects[0] if args.inputs.keyboard.key_held.s
  args.outputs.sprites << @render
end
