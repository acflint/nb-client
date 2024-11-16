=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::ListsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ListsApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::ListsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ListsApi' do
    it 'should create an instance of ListsApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::ListsApi)
    end
  end

  # unit tests for add_signups
  # Add signups
  # Add Signup IDs to list via an asynchronous process. Returns the token of an asynchronous process that can be queried using another endpoint. Accepts up to 10,000 signup IDs in a single payload. 
  # @param id id
  # @param add_signups_request 
  # @param [Hash] opts the optional parameters
  # @return [AddSignups202Response]
  describe 'add_signups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_list
  # Create a list
  # Creates a list from given data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent 
  # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
  # @option opts [ListCreateRequest] :list_create_request 
  # @return [ListShowResponse]
  describe 'create_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_list
  # Delete list with provided ID
  # Delete list with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists 
  # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
  # @return [EmptyMetaResponse]
  describe 'delete_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_lists
  # List all lists in a nation
  # Lists all lists
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent 
  # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [ListIndexResponse]
  describe 'list_lists test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_signup_listings
  # List all signups on the list for provided ID
  # Lists all signups for a given list
  # @param id List id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures 
  # @option opts [String] :fields_signups Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [SignupIndexResponse]
  describe 'list_signup_listings test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for remove_signups
  # Remove signups
  # Remove Signup IDs from a list via an asynchronous process. Returns the token of an asynchronous process that can be queried using another endpoint. Accepts up to 10,000 signup IDs in a single payload. 
  # @param id id
  # @param remove_signups_request 
  # @param [Hash] opts the optional parameters
  # @return [AddSignups202Response]
  describe 'remove_signups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_list
  # Show list with provided ID
  # Show list with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists 
  # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
  # @return [ListShowResponse]
  describe 'show_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for tag_signups
  # Add a tag to signups
  # Tag signups in list via an asynchronous process. If the tag does not exist it is created. Returns the token of an asyncrhronously process that can be queried using another endpoint. 
  # @param id id
  # @param tag_signups_request 
  # @param [Hash] opts the optional parameters
  # @return [AddSignups202Response]
  describe 'tag_signups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for untag_signups
  # Remove a tag from signups
  # Remove tag from signups in list via an asynchronous process. Returns the token of an asyncrhronously process that can be queried using another endpoint. 
  # @param id id
  # @param untag_signups_request 
  # @param [Hash] opts the optional parameters
  # @return [AddSignups202Response]
  describe 'untag_signups test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_list
  # Update an existing list
  # Updates an existing list
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists 
  # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
  # @option opts [ListUpdateRequest] :list_update_request 
  # @return [ListShowResponse]
  describe 'update_list test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end