class Systems
  class Player
    def self.run
      Components::PlayerControl.data.each do |id, data|
        if !(Components::Sprite.id & Entity.signatures[id]).zero?
          Components::Sprite.data[id].y -= 64 if $gtk.args.inputs.keyboard.key_down.send(data.north)
          Components::Sprite.data[id].y += 64 if $gtk.args.inputs.keyboard.key_down.send(data.south)
          Components::Sprite.data[id].x += 64 if $gtk.args.inputs.keyboard.key_down.send(data.east)
          Components::Sprite.data[id].x -= 64 if $gtk.args.inputs.keyboard.key_down.send(data.west)
        end
      end
    end
  end
end
