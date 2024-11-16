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
  class SurveyQuestionResponseDataAttributes
    # Unique identifier for the survey question. Has a maximum length of 20 characters.
    attr_accessor :slug

    # The question being asked.
    attr_accessor :content

    # Short description of the question.
    attr_accessor :intro

    # Tags to add to the signup after answering the question.
    attr_accessor :tag_list

    # Displays responses in random order.
    attr_accessor :is_randomized

    # The survey this question belongs to.
    attr_accessor :survey_id

    attr_accessor :status

    # The format of this question.
    attr_accessor :question_format

    attr_accessor :created_at

    attr_accessor :updated_at

    # When the question was published.
    attr_accessor :published_at

    # The position this question appears in the list of survey questions.
    attr_accessor :position

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'slug' => :'slug',
        :'content' => :'content',
        :'intro' => :'intro',
        :'tag_list' => :'tag_list',
        :'is_randomized' => :'is_randomized',
        :'survey_id' => :'survey_id',
        :'status' => :'status',
        :'question_format' => :'question_format',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'published_at' => :'published_at',
        :'position' => :'position'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'slug' => :'String',
        :'content' => :'String',
        :'intro' => :'String',
        :'tag_list' => :'String',
        :'is_randomized' => :'Boolean',
        :'survey_id' => :'String',
        :'status' => :'String',
        :'question_format' => :'String',
        :'created_at' => :'String',
        :'updated_at' => :'String',
        :'published_at' => :'String',
        :'position' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'slug',
        :'content',
        :'intro',
        :'tag_list',
        :'survey_id',
        :'status',
        :'question_format',
        :'created_at',
        :'updated_at',
        :'published_at',
        :'position'
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'SurveyQuestionReadOnlyAttributes',
      :'SurveyQuestionReadWriteAttributes'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `NationbuilderClient::SurveyQuestionResponseDataAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `NationbuilderClient::SurveyQuestionResponseDataAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.key?(:'intro')
        self.intro = attributes[:'intro']
      end

      if attributes.key?(:'tag_list')
        self.tag_list = attributes[:'tag_list']
      end

      if attributes.key?(:'is_randomized')
        self.is_randomized = attributes[:'is_randomized']
      else
        self.is_randomized = true
      end

      if attributes.key?(:'survey_id')
        self.survey_id = attributes[:'survey_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'question_format')
        self.question_format = attributes[:'question_format']
      else
        self.question_format = 'multiple_choice'
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'published_at')
        self.published_at = attributes[:'published_at']
      end

      if attributes.key?(:'position')
        self.position = attributes[:'position']
      else
        self.position = 0
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
      status_validator = EnumAttributeValidator.new('String', ["archived", "deleted", "expired", "hidden", "published", "rule_violated", "unlisted"])
      return false unless status_validator.valid?(@status)
      question_format_validator = EnumAttributeValidator.new('String', ["multiple_choice", "yes_no", "text"])
      return false unless question_format_validator.valid?(@question_format)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["archived", "deleted", "expired", "hidden", "published", "rule_violated", "unlisted"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] question_format Object to be assigned
    def question_format=(question_format)
      validator = EnumAttributeValidator.new('String', ["multiple_choice", "yes_no", "text"])
      unless validator.valid?(question_format)
        fail ArgumentError, "invalid value for \"question_format\", must be one of #{validator.allowable_values}."
      end
      @question_format = question_format
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          slug == o.slug &&
          content == o.content &&
          intro == o.intro &&
          tag_list == o.tag_list &&
          is_randomized == o.is_randomized &&
          survey_id == o.survey_id &&
          status == o.status &&
          question_format == o.question_format &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          published_at == o.published_at &&
          position == o.position
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [slug, content, intro, tag_list, is_randomized, survey_id, status, question_format, created_at, updated_at, published_at, position].hash
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
