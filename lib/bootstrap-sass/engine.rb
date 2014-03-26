module Bootstrap
  module Rails
    class Engine < ::Rails::Engine
      initializer "bootstrap-sass.assets.precompile" do |app|
        app.config.assets.paths << "/app/assets/fonts"
        app.config.assets.precompile << /\.(?:svg|eot|woff|ttf)$/
      end
    end
  end
end
