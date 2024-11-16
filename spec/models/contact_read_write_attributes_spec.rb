=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for NationbuilderClient::ContactReadWriteAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe NationbuilderClient::ContactReadWriteAttributes do
  let(:instance) { NationbuilderClient::ContactReadWriteAttributes.new }

  describe 'test an instance of ContactReadWriteAttributes' do
    it 'should create an instance of ContactReadWriteAttributes' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(NationbuilderClient::ContactReadWriteAttributes)
    end
  end

  describe 'test attribute "author_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "signup_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "contact_status"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["other", "answered", "bad_info", "left_message", "meaningful_interaction", "send_information", "not_interested", "no_answer", "refused", "inaccessible"])
      # validator.allowable_values.each do |value|
      #   expect { instance.contact_status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "contact_method"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["delivery", "door_knock", "email", "email_blast", "face_to_face", "facebook", "meeting", "phone_call", "robocall", "snail_mail", "text", "text_1to1", "text_blast", "tweet", "video_call", "webinar", "linkedin", "other"])
      # validator.allowable_values.each do |value|
      #   expect { instance.contact_method = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "broadcaster_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "content"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "pc_in_cents"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "path_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "path_step_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
