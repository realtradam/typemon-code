class ECS
  class Systems
    class Render
      def self.run
        ECS::Components::Renderable.data.sort_by { |v| v[1].z }.each do |key, data|
          if !(ECS::Components::Sprite.id & ECS::Entity.signatures[key]).zero?
            #ECS::Components::Based.data[key].x += 2
            $gtk.args.outputs.sprites << ECS::Components::Sprite.data[key].set
          elsif !(ECS::Components::Label.id & ECS::Entity.signatures[key]).zero?
            $gtk.args.outputs.labels << ECS::Components::Label.data[key].set
          end
        end
      end
    end
  end
end
