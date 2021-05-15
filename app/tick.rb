
thing0 = ECS::Entity.new(ECS::ID.sprite,
                         ECS::ID.renderable,
                         ECS::ID.player_control)
ECS::Components::Sprite.data[thing0.id].set(x: 576, y: 280, w: 128, h: 101, path: 'dragonruby.png')
thing1 = ECS::Entity.new(ECS::ID.label, ECS::ID.renderable)
ECS::Components::Label.data[thing1.id].set(x: 640, y: 460, text: 'Based ECS', size_enum: 5, alignment_enum: 1)
thing2 = ECS::Entity.new(ECS::ID.label, ECS::ID.renderable)
ECS::Components::Label.data[thing2.id].set(x: 640, y: 420, text: 'It Werks', size_enum: 5, alignment_enum: 1)

def tick args
  puts60 '---'
  ECS::Systems.constants.each do |constant|
    ECS::Systems.const_get(constant).run
  end
  puts60 '---'
end
