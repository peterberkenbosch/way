if Rails::VERSION::STRING.to_i > 2
  require 'rails3'
else
  require 'rails2'
end