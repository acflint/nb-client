=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NationbuilderClient::SurveyQuestionPossibleResponsesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SurveyQuestionPossibleResponsesApi' do
  before do
    # run before each test
    @api_instance = NationbuilderClient::SurveyQuestionPossibleResponsesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SurveyQuestionPossibleResponsesApi' do
    it 'should create an instance of SurveyQuestionPossibleResponsesApi' do
      expect(@api_instance).to be_instance_of(NationbuilderClient::SurveyQuestionPossibleResponsesApi)
    end
  end

  # unit tests for create_survey_question_possible_response
  # Create a survey question possible response
  # Creates a survey question possible response from given data
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question 
  # @option opts [String] :fields_survey_question_possible_responses Comma-delimited list of attributes to only return in the response
  # @option opts [SurveyQuestionPossibleResponseCreateRequest] :survey_question_possible_response_create_request 
  # @return [SurveyQuestionPossibleResponseShowResponse]
  describe 'create_survey_question_possible_response test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_survey_question_possible_response
  # Delete survey question possible response with provided ID
  # Delete survey question possible response with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question, survey_question_responses 
  # @option opts [String] :fields_survey_question_possible_responses Comma-delimited list of attributes to only return in the response
  # @return [EmptyMetaResponse]
  describe 'delete_survey_question_possible_response test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_survey_question_possible_responses
  # List all survey question possible responses in a nation
  # Lists all survey question possible responses
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question 
  # @option opts [String] :fields_survey_question_possible_responses Comma-delimited list of attributes to only return in the response
  # @option opts [String] :page_number Page number to list (starting at 1)
  # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
  # @return [SurveyQuestionPossibleResponseIndexResponse]
  describe 'list_survey_question_possible_responses test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for show_survey_question_possible_response
  # Show survey question possible response with provided ID
  # Show survey question possible response with provided ID
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question, survey_question_responses 
  # @option opts [String] :fields_survey_question_possible_responses Comma-delimited list of attributes to only return in the response
  # @return [SurveyQuestionPossibleResponseShowResponse]
  describe 'show_survey_question_possible_response test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_survey_question_possible_response
  # Update an existing survey question possible response
  # Updates an existing survey question possible response
  # @param id id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: survey_question, survey_question_responses 
  # @option opts [String] :fields_survey_question_possible_responses Comma-delimited list of attributes to only return in the response
  # @option opts [SurveyQuestionPossibleResponseUpdateRequest] :survey_question_possible_response_update_request 
  # @return [SurveyQuestionPossibleResponseShowResponse]
  describe 'update_survey_question_possible_response test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
