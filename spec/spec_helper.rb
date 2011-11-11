$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'holosim'
# Requires supporting files with custom matchers and macros, etc, in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

# Any configuration of Rpsec needed add it here
RSpec.configure do |config| 
  
end