
# TODO: when publishing require_all needs to be 
# replaces by require of each individual ruby file
def require_all dir
  `ls #{dir}`.each_line do |file|
    require "app/#{dir}/#{file.strip}"
  end
end

require 'app/dragonruby-game-toolkit-contrib/dragon/grid.rb'

require_all 'lib/helpers'

require 'app/lib/signatures.rb'

require 'app/lib/entity_manager.rb'

require 'app/lib/component_manager.rb'
require_all 'lib/components'

require 'app/lib/system_manager.rb'
require_all 'lib/systems'

require 'app/tick.rb'

