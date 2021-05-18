class BaseComponent
  class <<self
    def id
      #puts underscore(self.ancestors[0].name.split('::').last)
      @id ||= ID.send(ComponentHelper.underscore(ancestors[0].name.split('::').last))
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
