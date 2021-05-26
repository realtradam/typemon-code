class Helper
  class BaseComponent
    class <<self
      def id
        @id ||= ID.send(Helper::ComponentHelper.underscore(ancestors[0].name.split('::').last))
      end

      def data
        @data ||= {}
      end

      def add(entity_id)
        data[entity_id] = new
      end

      def delete(entity_id)
        data.delete entity_id
      end
    end
  end

  class Level < Helper::BaseComponent
    class <<self
      def data
        @data ||= { add: [], remove: [], grid: Helper::Array2D.new }
      end

      def add(entity_id)
        super
        data[:add].push entity_id
      end

      def remove(entity_id)
        data[:remove].push entity_id
        super
      end
    end
  end

  class Array2D < Array
    def [](val)
      unless val.nil?
        return self[val] = [] if super.nil?
      end
      super
    end
  end


  module ComponentHelper
    class <<self
      def up? char
        char == char.upcase
      end

      def down? char
        char == char.downcase
      end

      def underscore(input)
        output = input[0].downcase
        (1...(input.length - 1)).each do |iter|
          if down?(input[iter]) && up?(input[iter + 1])
            output += "#{input[iter].downcase}_"
          elsif up?(input[iter - 1]) && up?(input[iter]) && down?(input[iter + 1])
            output += "_#{input[iter].downcase}"
          else
            output += input[iter].downcase
          end
        end
        output += input[-1].downcase unless input.length == 1
        output
      end
    end
  end
end
