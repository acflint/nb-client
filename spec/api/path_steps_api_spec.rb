=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::PathStepsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PathStepsApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::PathStepsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PathStepsApi' do
    it 'should create an instance of PathStepsApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::PathStepsApi)
    end
  end

  # unit tests for create_path_step
  # Create a path step
  # Creates a path step from given data. If the position you specify is already taken by another step on                   the path, your step will be placed at that position and that step and the steps following will be                   re-ordered. If you do not specify a position, the step will be auto-assigned to the last position in                   the list of path steps for the related path.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person 
  # @option opts [String] :fields_path_steps Comma-delimited list of attributes to only return in the response
  # @option opts [PathStepCreateRequest] :path_step_create_request 
  # @return [PathStepShowResponse]
  describe 'create_path_step test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_path_step
  # Delete path step with provided ID
  # Delete path step with provided ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person 
  # @option opts [String] :fields_path_steps Comma-delimited list of attributes to only return in the response
  # @return [EmptyMetaResponse]
  describe 'delete_path_step test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_path_steps
  # List all path steps in a nation
  # Lists all path steps
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person 
  # @option opts [String] :fields_path_steps Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [PathStepIndexResponse]
  describe 'list_path_steps test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_path_step
  # Show path step with provided ID
  # Show path step with provided ID 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person 
  # @option opts [String] :fields_path_steps Comma-delimited list of attributes to only return in the response
  # @return [PathStepShowResponse]
  describe 'show_path_step test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_path_step
  # Update an existing path step
  # Updates an existing path step. If the position you specify is already taken by another step on                   the path, your step will be placed at that position and that step and the steps following will be                   re-ordered.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: path, default_point_person 
  # @option opts [String] :fields_path_steps Comma-delimited list of attributes to only return in the response
  # @option opts [PathStepUpdateRequest] :path_step_update_request 
  # @return [PathStepShowResponse]
  describe 'update_path_step test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end