module Mesin
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Mesin

      config.generators do |g|
        g.test_framework :rspec
        g.fixture_replacement :factory_girl, dir: 'spec/factories'
        g.template_engine :haml
      end
    end
  end
end
