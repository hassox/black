require 'short_stack'
require 'haml'

class Black < ShortStack
  add_root(__FILE__, "black")

  # Hook to use before we mount any applications
  # before_mount_applications do
  # end

  initialize_stack
end

require ::File.join(Pancake.get_root(__FILE__, "black"), "black")
