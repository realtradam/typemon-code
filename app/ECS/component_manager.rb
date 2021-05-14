require_relative './base_component'
Dir[File.join(__dir__, 'components', '*.rb')].sort.each { |file| require file }

class ECS
  class Components
    class <<self
      def entity_destroyed(entity_id)
        constants.each do |component|
          component.delete(entity_id) unless (component.id & ECS::Entity.signatures[entity_id]).zero?
        end
      end

      def entity_created(entity_id)
        constants.each do |component|
          const_get(component.to_s).add(entity_id) unless (const_get(component.to_s).id & ECS::Entity.signatures[entity_id]).zero?
        end
      end
    end
  end
end
