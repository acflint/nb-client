=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::AutomationEnrollmentsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AutomationEnrollmentsApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::AutomationEnrollmentsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AutomationEnrollmentsApi' do
    it 'should create an instance of AutomationEnrollmentsApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::AutomationEnrollmentsApi)
    end
  end

  # unit tests for create_automation_enrollments
  # Create an automation enrollment
  # Creates an automation enrollment from given data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: automation, signup 
  # @option opts [String] :fields_automation_enrollments Comma-delimited list of attributes to only return in the response
  # @option opts [AutomationEnrollmentCreateRequest] :automation_enrollment_create_request 
  # @return [AutomationEnrollmentShowResponse]
  describe 'create_automation_enrollments test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_automation_enrollments
  # Delete automation enrollments with provided ID
  # Delete automation enrollments with provided ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [EmptyMetaResponse]
  describe 'delete_automation_enrollments test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_automation_enrollments
  # List all automation enrollments in a nation
  # Lists all automation enrollments
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: automation, signup 
  # @option opts [String] :fields_automation_enrollments Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [AutomationEnrollmentIndexResponse]
  describe 'list_automation_enrollments test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_automation_enrollments
  # Show automation enrollments with provided ID
  # Show automation enrollments with provided ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: automation, signup 
  # @option opts [String] :fields_automation_enrollments Comma-delimited list of attributes to only return in the response
  # @return [AutomationEnrollmentShowResponse]
  describe 'show_automation_enrollments test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
