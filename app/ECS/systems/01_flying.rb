class ECS
  class Systems
    class Based
      def self.run
        ECS::Components::Based.data.each do |key, data|
          if ECS::Components::Based.id == ECS::Entity.signatures[key]
            #puts "Entity ID: #{key}"
            #puts "ONLY Based Data: "
            #puts "eks: #{ECS::Components::Based.data[key].x += 3}"
            #puts "why: #{ECS::Components::Based.data[key].y += 3}"
            #puts "---"
            data.x += 3
            data.y += 3
          end
        end
      end
    end
  end
end
