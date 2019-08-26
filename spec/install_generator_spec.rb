# frozen_string_literal: true

require 'spec_helper'
require_relative '../../routingo/lib/generators/routingo/install_generator.rb'

describe Routingo::Generators::Install do
  let(:path) { 'config/routes.rb' }
  let(:routes) { 'config/routes/*.rb' }

  context 'Insert into application.rb file' do
    it 'should inject into file' do
      data = "config.paths[#{path}].concat(Dir[Rails.root.join(#{routes})])"
      allow(File).to receive(:read).and_return(data)
    end

    it 'Should open for write' do
      @buffer = StringIO.new
      @filename = 'application.rb'
      @content = "config.paths[#{path}].concat(Dir[Rails.root.join(#{routes})])"
      allow(File).to receive(:open).with(@filename, 'w').and_yield(@buffer)
      File.open(@filename, 'w') { |f| f.write(@content) }
      expect(@buffer.string).to eq(@content)
    end
  end
end
