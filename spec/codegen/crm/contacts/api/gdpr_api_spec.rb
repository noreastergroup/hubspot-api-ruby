=begin
#Contacts

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Crm::Contacts::GDPRApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GDPRApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Crm::Contacts::GDPRApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GDPRApi' do
    it 'should create an instance of GDPRApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Crm::Contacts::GDPRApi)
    end
  end

  # unit tests for purge_by_email
  # DELETE
  # Permanently delete a contact by email address and all associated content to follow GDPR. If contact isn&#39;t found, blacklists an email address from being used in the future.
  # @param email 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'purge_by_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for purge_by_id
  # DELETE
  # Permanently delete a contact by id and all associated content to follow GDPR
  # @param contact_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'purge_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
