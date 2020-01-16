=begin
#Properties

#All HubSpot objects store data in default and custom properties. These endpoints provide access to read and modify object properties in HubSpot.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Hubspot::Client::Crm::Properties::Models::PropertyGroupUpdate
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PropertyGroupUpdate' do
  before do
    # run before each test
    @instance = Hubspot::Client::Crm::Properties::Models::PropertyGroupUpdate.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PropertyGroupUpdate' do
    it 'should create an instance of PropertyGroupUpdate' do
      expect(@instance).to be_instance_of(Hubspot::Client::Crm::Properties::Models::PropertyGroupUpdate)
    end
  end
  describe 'test attribute "label"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "display_order"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
