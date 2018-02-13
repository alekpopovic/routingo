module Routingo
  class Routingo < Rails::Generators::NamedBase
    def create_helper_file
      create_file "config/routes/#{file_name}.rb", <<-FILE
      Rails.application.routes.draw do
        
      end
      FILE
    end
  end
end
