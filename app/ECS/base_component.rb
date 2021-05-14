class ECS
  class BaseComponent
    class <<self
      def data
        @data ||= {}
      end

      def add(entity_id, **args)
        data[entity_id] = new(**args)
      end

      def delete(entity_id)
        data.delete entity_id
      end
    end
  end
end
