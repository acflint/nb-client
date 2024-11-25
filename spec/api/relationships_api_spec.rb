=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::RelationshipsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RelationshipsApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::RelationshipsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RelationshipsApi' do
    it 'should create an instance of RelationshipsApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::RelationshipsApi)
    end
  end

  # unit tests for create_relationship
  # Create a relationship
  # Creates a relationship from given data. Valid relationship types are affiliate-affiliate, alum-school, assistant-assisted, board_member-organization, candidate-committee, chapter-parent, child-parent, consultant-organization, employee-employer, family_partner-family_partner, friend-friend, member-organization, mentee-mentor, partner-partner, primary_contact-organization, relative-relative, representative-constituent, resident-organization, sibling-sibling, spouse-spouse, student-school, student-teacher, subordinate-manager, subsidiary-parent, treasurer-committee. first_signup_id       corresponds with the ID of the signup on the first role listed, and second_signup_id corresponds       with the ID of the signup on the second role listed in the relationship type.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup 
  # @option opts [String] :fields_relationships Comma-delimited list of attributes to only return in the response
  # @option opts [RelationshipCreateRequest] :relationship_create_request 
  # @return [RelationshipShowResponse]
  describe 'create_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_relationship
  # Delete relationship with provided ID
  # Delete relationship with provided ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup 
  # @option opts [String] :fields_relationships Comma-delimited list of attributes to only return in the response
  # @return [EmptyMetaResponse]
  describe 'delete_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_relationships
  # List all relationships in a nation
  # Lists all relationships
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup 
  # @option opts [String] :fields_relationships Comma-delimited list of attributes to only return in the response
  # @return [RelationshipIndexResponse]
  describe 'list_relationships test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_relationship
  # Show relationship with provided ID
  # Show relationship with provided ID
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup 
  # @option opts [String] :fields_relationships Comma-delimited list of attributes to only return in the response
  # @return [RelationshipShowResponse]
  describe 'show_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_relationship
  # Update an existing relationship
  # Updates an existing relationship. Valid relationship types are affiliate-affiliate, alum-school, assistant-assisted, board_member-organization, candidate-committee, chapter-parent, child-parent, consultant-organization, employee-employer, family_partner-family_partner, friend-friend, member-organization, mentee-mentor, partner-partner, primary_contact-organization, relative-relative, representative-constituent, resident-organization, sibling-sibling, spouse-spouse, student-school, student-teacher, subordinate-manager, subsidiary-parent, treasurer-committee. first_signup_id       corresponds with the ID of the signup on the first role listed, and second_signup_id corresponds       with the ID of the signup on the second role listed in the relationship type.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: first_signup, second_signup 
  # @option opts [String] :fields_relationships Comma-delimited list of attributes to only return in the response
  # @option opts [RelationshipUpdateRequest] :relationship_update_request 
  # @return [RelationshipShowResponse]
  describe 'update_relationship test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
