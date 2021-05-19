class Components
  # Gives control(keyboard or otherwise) over an object
  class PlayerControl < BaseComponent
    attr_accessor :north, :south, :east, :west, :interact, :menu

    def initialize
      @north = 'w'
      @south = 's'
      @east = 'd'
      @west = 'a'
      @interact = 'space'
      @menu = 'enter'
    end

    def set(**opts)
      opts.each do |key, value|
        send "#{key}=", value
      end
    end
  end
end
