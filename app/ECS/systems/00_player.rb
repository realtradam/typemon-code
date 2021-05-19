class Systems
  class Player
    def self.run
      Components::PlayerControl.data.each do |id, data|
        if !(Components::Sprite.id & Entity.signatures[id]).zero?
          Components::Sprite.data[id].y -= 10 if $gtk.args.inputs.keyboard.key_held.send(data.north)
          Components::Sprite.data[id].y += 10 if $gtk.args.inputs.keyboard.key_held.send(data.south)
          Components::Sprite.data[id].x += 10 if $gtk.args.inputs.keyboard.key_held.send(data.east)
          Components::Sprite.data[id].x -= 10 if $gtk.args.inputs.keyboard.key_held.send(data.west)
        end
      end
    end
  end
end
