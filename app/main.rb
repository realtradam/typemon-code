
# TODO: when publishing require_all needs to be 
# replaces by require of each individual ruby file
def require_all dir
  `ls #{dir}`.each_line do |file|
    require "#{dir}/#{file.strip}"
  end
end

require 'mygame/app/dragonruby-game-toolkit-contrib/dragon/grid.rb'

require_all 'mygame/app/lib/FelFlame/helpers'

require 'mygame/app/lib/FelFlame/signatures.rb'

require 'mygame/app/lib/FelFlame/entity_manager.rb'

require 'mygame/app/lib/FelFlame/component_manager.rb'
require_all 'mygame/app/lib/FelFlame/components'

require 'mygame/app/lib/FelFlame/system_manager.rb'
require_all 'mygame/app/lib/FelFlame/systems'

require 'mygame/app/tick.rb'

