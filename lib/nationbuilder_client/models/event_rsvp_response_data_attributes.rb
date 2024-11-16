=begin
#NationBuilder V2 API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

require 'date'
require 'time'

module NationbuilderClient
  class EventRsvpResponseDataAttributes
    # The cost of the RSVP in cents.
    attr_accessor :amount_in_cents

    # The signup is attending the event.
    attr_accessor :attendee

    # The RSVP was canceled.
    attr_accessor :canceled

    # The email address of the attendee.
    attr_accessor :email

    # The associated event.
    attr_accessor :event_id

    # The attendee's first name.
    attr_accessor :first_name

    # Number of guests on the RSVP.
    attr_accessor :guests_count

    # The attendee's last name.
    attr_accessor :last_name

    # The associated page.
    attr_accessor :page_id

    # The RSVP has already been paid.
    attr_accessor :prepaid

    # The RSVP is private.
    attr_accessor :private

    # Number of tickets sold with this RSVP.
    attr_accessor :tickets_count

    # The attendee is a volunteer.
    attr_accessor :volunteer

    attr_accessor :created_at

    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'amount_in_cents' => :'amount_in_cents',
        :'attendee' => :'attendee',
        :'canceled' => :'canceled',
        :'email' => :'email',
        :'event_id' => :'event_id',
        :'first_name' => :'first_name',
        :'guests_count' => :'guests_count',
        :'last_name' => :'last_name',
        :'page_id' => :'page_id',
        :'prepaid' => :'prepaid',
        :'private' => :'private',
        :'tickets_count' => :'tickets_count',
        :'volunteer' => :'volunteer',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'amount_in_cents' => :'Integer',
        :'attendee' => :'Boolean',
        :'canceled' => :'Boolean',
        :'email' => :'String',
        :'event_id' => :'String',
        :'first_name' => :'String',
        :'guests_count' => :'Integer',
        :'last_name' => :'String',
        :'page_id' => :'String',
        :'prepaid' => :'Boolean',
        :'private' => :'Boolean',
        :'tickets_count' => :'Integer',
        :'volunteer' => :'Boolean',
        :'created_at' => :'String',
        :'updated_at' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'amount_in_cents',
        :'attendee',
        :'canceled',
        :'email',
        :'event_id',
        :'first_name',
        :'guests_count',
        :'last_name',
        :'page_id',
        :'prepaid',
        :'private',
        :'tickets_count',
        :'volunteer',
        :'created_at',
        :'updated_at'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'EventRsvpReadOnlyAttributes',
      :'EventRsvpReadWriteAttributes'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NationbuilderClient::EventRsvpResponseDataAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NationbuilderClient::EventRsvpResponseDataAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'amount_in_cents')
        self.amount_in_cents = attributes[:'amount_in_cents']
      end

      if attributes.key?(:'attendee')
        self.attendee = attributes[:'attendee']
      end

      if attributes.key?(:'canceled')
        self.canceled = attributes[:'canceled']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'event_id')
        self.event_id = attributes[:'event_id']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'guests_count')
        self.guests_count = attributes[:'guests_count']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'page_id')
        self.page_id = attributes[:'page_id']
      end

      if attributes.key?(:'prepaid')
        self.prepaid = attributes[:'prepaid']
      end

      if attributes.key?(:'private')
        self.private = attributes[:'private']
      end

      if attributes.key?(:'tickets_count')
        self.tickets_count = attributes[:'tickets_count']
      end

      if attributes.key?(:'volunteer')
        self.volunteer = attributes[:'volunteer']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          amount_in_cents == o.amount_in_cents &&
          attendee == o.attendee &&
          canceled == o.canceled &&
          email == o.email &&
          event_id == o.event_id &&
          first_name == o.first_name &&
          guests_count == o.guests_count &&
          last_name == o.last_name &&
          page_id == o.page_id &&
          prepaid == o.prepaid &&
          private == o.private &&
          tickets_count == o.tickets_count &&
          volunteer == o.volunteer &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amount_in_cents, attendee, canceled, email, event_id, first_name, guests_count, last_name, page_id, prepaid, private, tickets_count, volunteer, created_at, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = NationbuilderClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
