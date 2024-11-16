=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::PledgesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PledgesApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::PledgesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PledgesApi' do
    it 'should create an instance of PledgesApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::PledgesApi)
    end
  end

  # unit tests for create_pledge
  # Create a pledge
  # Creates a pledge from given data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup 
  # @option opts [String] :fields_pledges Comma-delimited list of attributes to only return in the response
  # @option opts [PledgeCreateRequest] :pledge_create_request 
  # @return [PledgeShowResponse]
  describe 'create_pledge test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_pledge
  # Delete pledge with provided ID
  # Delete pledge with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup 
  # @option opts [String] :fields_pledges Comma-delimited list of attributes to only return in the response
  # @return [EmptyMetaResponse]
  describe 'delete_pledge test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_pledges
  # List all pledges in a nation
  # Lists all pledges
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup 
  # @option opts [String] :fields_pledges Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [PledgeIndexResponse]
  describe 'list_pledges test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_pledge
  # Show pledge with provided ID
  # Show pledge with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup 
  # @option opts [String] :fields_pledges Comma-delimited list of attributes to only return in the response
  # @return [PledgeShowResponse]
  describe 'show_pledge test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_pledge
  # Update an existing pledge
  # Updates an existing pledge
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, donation_tracking_code, page, recruiter, signup 
  # @option opts [String] :fields_pledges Comma-delimited list of attributes to only return in the response
  # @option opts [PledgeUpdateRequest] :pledge_update_request 
  # @return [PledgeShowResponse]
  describe 'update_pledge test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
