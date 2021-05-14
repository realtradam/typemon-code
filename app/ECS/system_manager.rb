Dir[File.join(__dir__, 'systems', '*.rb')].sort.each { |file| require file }

class ECS
  class Systems
  end
end
