module Mesin
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Mesin

      config.generators do |g|
        g.test_framework :rspec
        g.fixture_replacement :factory_girl, dir: 'spec/factories'
        g.template_engine :haml
        g.javascript_engine :coffee
      end

      # Load migration files to parent app
      initializer :append_migrations do |app|
        unless app.root.to_s.match(root.to_s)
          config.paths['db/migrate'].expanded.each do |p|
            app.config.paths['db/migrate'] << p
          end
        end
      end

      # Add assets precompile file extension
      initializer :add_assets_precompile do |app|
        app.config.assets.precompile += %w( *.png  *.jpg *.gif *.scss *.sass )
      end

      # Append vendor directory assets for keep third party plugin
      config.assets.paths << "vendor/javascripts"
      config.assets.paths << "vendor/stylesheets"

      # Do not make helpers available in all views
      # Helpers should isolated and available only for related controller or views
      config.action_controller.include_all_helpers = false
    end
  end
end
