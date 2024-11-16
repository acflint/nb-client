=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::PathJourneyStatusChangesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PathJourneyStatusChangesApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::PathJourneyStatusChangesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PathJourneyStatusChangesApi' do
    it 'should create an instance of PathJourneyStatusChangesApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::PathJourneyStatusChangesApi)
    end
  end

  # unit tests for create_path_journey_status_change
  # Create a path journey status change
  # Creates a path journey status change from given data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path 
  # @option opts [String] :fields_path_journey_status_changes Comma-delimited list of attributes to only return in the response
  # @option opts [PathJourneyStatusChangeCreateRequest] :path_journey_status_change_create_request 
  # @return [PathJourneyStatusChangeShowResponse]
  describe 'create_path_journey_status_change test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_path_journey_status_change
  # Delete path journey status change with provided ID
  # Delete path journey status change with provided ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, path_journeys, path_histories 
  # @option opts [String] :fields_path_journey_status_changes Comma-delimited list of attributes to only return in the response
  # @return [EmptyMetaResponse]
  describe 'delete_path_journey_status_change test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_path_journey_status_changes
  # List all path journey status changes in a nation
  # Lists all path journey status changes
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path 
  # @option opts [String] :fields_path_journey_status_changes Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [PathJourneyStatusChangeIndexResponse]
  describe 'list_path_journey_status_changes test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_path_journey_status_change
  # Show path journey status change with provided ID
  # Show path journey status change with provided ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, path_journeys, path_histories 
  # @option opts [String] :fields_path_journey_status_changes Comma-delimited list of attributes to only return in the response
  # @return [PathJourneyStatusChangeShowResponse]
  describe 'show_path_journey_status_change test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_path_journey_status_change
  # Update an existing path journey status change
  # Updates an existing path journey status change
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, path_journeys, path_histories 
  # @option opts [String] :fields_path_journey_status_changes Comma-delimited list of attributes to only return in the response
  # @option opts [PathJourneyStatusChangeUpdateRequest] :path_journey_status_change_update_request 
  # @return [PathJourneyStatusChangeShowResponse]
  describe 'update_path_journey_status_change test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end