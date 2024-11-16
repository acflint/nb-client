=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::EventTicketLevelsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EventTicketLevelsApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::EventTicketLevelsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventTicketLevelsApi' do
    it 'should create an instance of EventTicketLevelsApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::EventTicketLevelsApi)
    end
  end

  # unit tests for create_event_ticket_level
  # Create an event ticket level
  # Creates an event ticket level. Ticket levels must be associated with an event, have a name, a number indicating how many tickets are included in a single purchase, a limit indicating the max number of tickets that can be sold, and an amount in cents indicating the cost of purchasing tickets at this ticket level.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event 
  # @option opts [String] :fields_event_ticket_levels Comma-delimited list of attributes to only return in the response
  # @option opts [EventTicketLevelCreateRequest] :event_ticket_level_create_request 
  # @return [EventTicketLevelShowResponse]
  describe 'create_event_ticket_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_event_ticket_level
  # Delete event ticket level with provided ID
  # Delete event ticket level with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event, event_rsvps 
  # @option opts [String] :fields_event_ticket_levels Comma-delimited list of attributes to only return in the response
  # @return [EmptyMetaResponse]
  describe 'delete_event_ticket_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_event_ticket_levels
  # List all event ticket levels in a nation
  # Lists all event ticket levels in the nation. To request ticket levels for a specific event, filter on event_id using query filtering, &#x60;filter[event_id]&#x3D;123&#x60;. Both the Event and Event RSVPs associated with a ticket level can be sideloaded.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event 
  # @option opts [String] :fields_event_ticket_levels Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [EventTicketLevelIndexResponse]
  describe 'list_event_ticket_levels test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_event_ticket_level
  # Show event ticket level with provided ID
  # Show event ticket level with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event, event_rsvps 
  # @option opts [String] :fields_event_ticket_levels Comma-delimited list of attributes to only return in the response
  # @return [EventTicketLevelShowResponse]
  describe 'show_event_ticket_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_event_ticket_level
  # Update an existing event ticket level
  # Updates an existing event ticket level with values provided in the payload.
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: event, event_rsvps 
  # @option opts [String] :fields_event_ticket_levels Comma-delimited list of attributes to only return in the response
  # @option opts [EventTicketLevelUpdateRequest] :event_ticket_level_update_request 
  # @return [EventTicketLevelShowResponse]
  describe 'update_event_ticket_level test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
