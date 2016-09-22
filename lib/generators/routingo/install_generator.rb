require 'rails/generators'
module Routingo
  module Generators
    class Install < Rails::Generators::Base

      desc "Creates active_admin initializer, routes and copy locale files to your application."

      def insert_path
        insert_into_file "config/application.rb", :after => "class Application < Rails::Application\n" do
          "    config.paths['config/routes.rb'].concat(Dir[Rails.root.join('config/routes/*.rb')])\n"
        end
      end

    end
  end
end
