require 'pancake'
require ::File.join(::File.expand_path(::File.dirname(__FILE__)), "..", "black")

# get the application to run.  The application in the Pancake.start block
# is the master application.  It will have all requests directed to it through the
# pancake middleware
# This should be a very minimal file, but should be used when any stand alone code needs to be included
Black.include_pancake_stack!
app = Pancake.start(:root => Pancake.get_root(__FILE__)){ Black.stackup(:master => true) }

run app
