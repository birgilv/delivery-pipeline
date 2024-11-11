# spec/configuration_syntax_spec.rb
require 'rails_helper'
require 'yaml'
require 'json'

RSpec.describe 'Configuration Syntax' do
  describe 'YAML files' do
    it 'are all valid' do
      Dir.glob('config/**/*.yml').each do |file|
        expect { YAML.load_file(file) }.not_to raise_error, "Syntax error in YAML file: #{file}"
      end
    end
  end

  describe 'JSON files' do
    it 'are all valid' do
      Dir.glob('config/**/*.json').each do |file|
        expect { JSON.parse(File.read(file)) }.not_to raise_error, "Syntax error in JSON file: #{file}"
      end
    end
  end
end
