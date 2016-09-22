require 'spec_helper'
require_relative '../../routingo/lib/generators/routingo/install_generator.rb'

describe "Routingo Install" do

  context "Insert into application.rb file" do

    it "should inject into file" do
      data = "config.paths['config/routes.rb'].concat(Dir[Rails.root.join('config/routes/*.rb')])"
      allow(File).to receive(:read).and_return(data)
    end

    it 'How to mock File.open for write with rspec 3.5' do
      @buffer = StringIO.new()
      @filename = "application.rb"
      @content = "config.paths['config/routes.rb'].concat(Dir[Rails.root.join('config/routes/*.rb')])"
      allow(File).to receive(:open).with(@filename,'w').and_yield( @buffer )
      File.open(@filename, 'w') {|f| f.write(@content)}
      expect(@buffer.string).to eq(@content)
    end

  end

end
