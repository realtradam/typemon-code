class ECS
  class Systems
    class Player
      def self.run
        ECS::Components::PlayerControl.data.each do |id, data|
          if !(ECS::Components::Renderable.id & ECS::Entity.signatures[id]).zero?
            ECS::Components::Sprite.data[id].y += 10 if $gtk.args.inputs.keyboard.key_held.send(data.north)
            ECS::Components::Sprite.data[id].y -= 10 if $gtk.args.inputs.keyboard.key_held.send(data.south)
            ECS::Components::Sprite.data[id].x += 10 if $gtk.args.inputs.keyboard.key_held.send(data.east)
            ECS::Components::Sprite.data[id].x -= 10 if $gtk.args.inputs.keyboard.key_held.send(data.west)
            #$gtk.args.outputs.labels << ECS::Components::Label.data[id].vars
          end
        end
      end
    end
  end
end
