
# TODO: when publishing require_all needs to be 
# replaces by require of each individual ruby file
def require_all dir
  `ls #{dir}`.each_line do |file|
    require "app/#{dir}/#{file.strip}"
  end
end

require 'app/ECS/signatures.rb'

require 'app/ECS/entity_manager.rb'

require 'app/ECS/component_manager.rb'
require 'app/ECS/base_component.rb'
require_all 'ECS/components'

require 'app/ECS/system_manager.rb'
require_all 'ECS/systems'

require 'app/tick.rb'

