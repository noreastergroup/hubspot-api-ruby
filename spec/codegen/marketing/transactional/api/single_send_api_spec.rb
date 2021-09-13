=begin
#Transactional Email

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Hubspot::Marketing::Transactional::SingleSendApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SingleSendApi' do
  before do
    # run before each test
    @api_instance = Hubspot::Marketing::Transactional::SingleSendApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SingleSendApi' do
    it 'should create an instance of SingleSendApi' do
      expect(@api_instance).to be_instance_of(Hubspot::Marketing::Transactional::SingleSendApi)
    end
  end

  # unit tests for send_email
  # Send a single transactional email asynchronously.
  # Asynchronously send a transactional email. Returns the status of the email send with a statusId that can be used to continuously query for the status using the Email Send Status API.
  # @param [Hash] opts the optional parameters
  # @option opts [PublicSingleSendRequestEgg] :public_single_send_request_egg A request object describing the email to send.
  # @return [EmailSendStatusView]
  describe 'send_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
