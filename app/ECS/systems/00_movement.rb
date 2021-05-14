class ECS
  class Systems
    class Movement
      def self.run
        ECS::Components::TestComponent.data.each do |key, data|
          puts "Entity ID: #{key}"
          unless (ECS::Components::Based.id - ECS::Entity.signatures[key]).zero?
            unless (ECS::Components::Based.id & ECS::Entity.signatures[key]).zero?
              puts "Based Data: "
              puts "eks: #{ECS::Components::Based.data[key].x += 2}"
              puts "why: #{ECS::Components::Based.data[key].y += 2}"
            end
          end
          puts "Movement:"
          puts "x: #{data.x += 1}"
          puts "y: #{data.y += 1}"
          puts "---"
        end
      end
    end
  end
end
