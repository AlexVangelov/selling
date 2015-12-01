module Selling
  class Engine < ::Rails::Engine
    isolate_namespace Selling
    
    config.generators do |g|
      g.orm             :active_record
      g.template_engine :jbuilder
      g.test_framework  :test_unit, fixture: true
    end
  end
end
