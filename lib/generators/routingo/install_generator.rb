# frozen_string_literal: true

require 'rails/generators'

module Routingo
  module Generators
    # Install Class
    class Install < Rails::Generators::Base
      def insert_path
        klazz = 'class Application < Rails::Application'
        paths = 'config/routes.rb'
        joins = 'config/routes/*.rb'
        insert_into_file 'config/application.rb', after: "#{klazz}\n" do
          "config.paths['#{paths}'].concat(Dir[Rails.root.join('#{joins}')])\n"
        end
      end
    end
  end
end
