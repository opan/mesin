module Mesin
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Mesin

      config.generators do |g|
        g.test_framework :rspec
        g.fixture_replacement :factory_girl, dir: 'spec/factories'
        g.template_engine :haml
      end

      # Load migration files to parent app
      initializer :append_migrations do |app|
        unless app.root.to_s.match(root.to_s)
          config.paths['db/migrate'].expanded.each do |p|
            app.config.paths['db/migrate'] << p
          end
        end
      end

      # Append vendor directory assets for keep third party plugin
      config.assets.paths << "vendor/javascripts"
      config.assets.paths << "vendor/stylesheets"
    end
  end
end
