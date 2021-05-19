class Components
  # If an entity can be rendered on screen
  class GridSingleton < BaseComponent
    attr_accessor :z

    def initialize
      @z = 0
    end

    def set(**opts)
      opts.each do |key, value|
        self.send "#{key}=", value
      end
    end
  end
end
