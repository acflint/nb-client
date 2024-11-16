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

# Unit tests for NationbuilderClient::EventResponseDataAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe NationbuilderClient::EventResponseDataAttributes do
  let(:instance) { NationbuilderClient::EventResponseDataAttributes.new }

  describe 'test an instance of EventResponseDataAttributes' do
    it 'should create an instance of EventResponseDataAttributes' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(NationbuilderClient::EventResponseDataAttributes)
    end
  end

  describe 'test attribute "accept_rsvps"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "additional_rsvps_count"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "allow_guests"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "attending_count"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "auto_response_broadcaster_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "auto_response_content"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "auto_response_subject"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "capacity_count"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "contact_email"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "contact_email_private"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "contact_name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "contact_phone_number"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "contact_phone_private"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "content"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "donation_tracking_code_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "duration"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "event_form_address"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["required", "optional", "hidden"])
      # validator.allowable_values.each do |value|
      #   expect { instance.event_form_address = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "event_form_phone"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["required", "optional", "hidden"])
      # validator.allowable_values.each do |value|
      #   expect { instance.event_form_phone = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "gather_volunteers"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "point_person_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "private"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "sends_auto_response"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "show_guests"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "start_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "time_zone"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["International Date Line West", "American Samoa", "Midway Island", "Hawaii", "Alaska", "Pacific Time (US & Canada)", "Tijuana", "Arizona", "Mazatlan", "Mountain Time (US & Canada)", "Central America", "Central Time (US & Canada)", "Chihuahua", "Guadalajara", "Mexico City", "Monterrey", "Saskatchewan", "Bogota", "Eastern Time (US & Canada)", "Indiana (East)", "Lima", "Quito", "Atlantic Time (Canada)", "Caracas", "Georgetown", "La Paz", "Puerto Rico", "Santiago", "Newfoundland", "Brasilia", "Buenos Aires", "Montevideo", "Greenland", "Mid-Atlantic", "Azores", "Cape Verde Is.", "Edinburgh", "Lisbon", "London", "Monrovia", "UTC", "Amsterdam", "Belgrade", "Berlin", "Bern", "Bratislava", "Brussels", "Budapest", "Casablanca", "Copenhagen", "Dublin", "Ljubljana", "Madrid", "Paris", "Prague", "Rome", "Sarajevo", "Skopje", "Stockholm", "Vienna", "Warsaw", "West Central Africa", "Zagreb", "Zurich", "Athens", "Bucharest", "Cairo", "Harare", "Helsinki", "Jerusalem", "Kaliningrad", "Kyiv", "Pretoria", "Riga", "Sofia", "Tallinn", "Vilnius", "Baghdad", "Istanbul", "Kuwait", "Minsk", "Moscow", "Nairobi", "Riyadh", "St. Petersburg", "Volgograd", "Tehran", "Abu Dhabi", "Baku", "Muscat", "Samara", "Tbilisi", "Yerevan", "Kabul", "Almaty", "Ekaterinburg", "Islamabad", "Karachi", "Tashkent", "Chennai", "Kolkata", "Mumbai", "New Delhi", "Sri Jayawardenepura", "Kathmandu", "Astana", "Dhaka", "Urumqi", "Rangoon", "Bangkok", "Hanoi", "Jakarta", "Krasnoyarsk", "Novosibirsk", "Beijing", "Chongqing", "Hong Kong", "Irkutsk", "Kuala Lumpur", "Perth", "Singapore", "Taipei", "Ulaanbaatar", "Osaka", "Sapporo", "Seoul", "Tokyo", "Yakutsk", "Adelaide", "Darwin", "Brisbane", "Canberra", "Guam", "Hobart", "Melbourne", "Port Moresby", "Sydney", "Vladivostok", "Magadan", "New Caledonia", "Solomon Is.", "Srednekolymsk", "Auckland", "Fiji", "Kamchatka", "Marshall Is.", "Wellington", "Chatham Is.", "Nuku'alofa", "Samoa", "Tokelau Is."])
      # validator.allowable_values.each do |value|
      #   expect { instance.time_zone = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "user_ticket_currency"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "user_ticket_price_in_cents"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "user_ticket_purchase_url"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "uses_shifts"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "uses_tickets"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "venue_name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "page_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
