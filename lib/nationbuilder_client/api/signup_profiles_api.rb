# #NationBuilder V2 API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 2.0
#
# Generated by: https://openapi-generator.tech
# Generator version: 7.9.0
#

require "cgi"

module NationbuilderClient
  class SignupProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a signup profile
    # Creates a signup profile from given data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup
    # @option opts [String] :fields_signup_profiles Comma-delimited list of attributes to only return in the response
    # @option opts [SignupProfileCreateRequest] :signup_profile_create_request
    # @return [SignupProfileShowResponse]
    def create_signup_profile(opts = {})
      data, _status_code, _headers = create_signup_profile_with_http_info(opts)
      data
    end

    # Create a signup profile
    # Creates a signup profile from given data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup
    # @option opts [String] :fields_signup_profiles Comma-delimited list of attributes to only return in the response
    # @option opts [SignupProfileCreateRequest] :signup_profile_create_request
    # @return [Array<(SignupProfileShowResponse, Integer, Hash)>] SignupProfileShowResponse data, response status code and response headers
    def create_signup_profile_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignupProfilesApi.create_signup_profile ..."
      end
      # resource path
      local_var_path = "/api/v2/signup_profiles"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[signup_profiles]"] = opts[:fields_signup_profiles] if !opts[:fields_signup_profiles].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(["application/json"])
      if !content_type.nil?
          header_params["Content-Type"] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:signup_profile_create_request])

      # return_type
      return_type = opts[:debug_return_type] || "SignupProfileShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"SignupProfilesApi.create_signup_profile",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignupProfilesApi#create_signup_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete signup profile with provided ID
    # Delete signup_profile with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup
    # @option opts [String] :fields_signup_profiles Comma-delimited list of attributes to only return in the response
    # @return [EmptyMetaResponse]
    def delete_signup_profile(id, opts = {})
      data, _status_code, _headers = delete_signup_profile_with_http_info(id, opts)
      data
    end

    # Delete signup profile with provided ID
    # Delete signup_profile with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup
    # @option opts [String] :fields_signup_profiles Comma-delimited list of attributes to only return in the response
    # @return [Array<(EmptyMetaResponse, Integer, Hash)>] EmptyMetaResponse data, response status code and response headers
    def delete_signup_profile_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignupProfilesApi.delete_signup_profile ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignupProfilesApi.delete_signup_profile"
      end
      # resource path
      local_var_path = "/api/v2/signup_profiles/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[signup_profiles]"] = opts[:fields_signup_profiles] if !opts[:fields_signup_profiles].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "EmptyMetaResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"SignupProfilesApi.delete_signup_profile",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignupProfilesApi#delete_signup_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # List all signup profiles in a nation
    # Lists all signup profiles
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup
    # @option opts [String] :fields_signup_profiles Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [SignupProfileIndexResponse]
    def list_signup_profiles(opts = {})
      data, _status_code, _headers = list_signup_profiles_with_http_info(opts)
      data
    end

    # List all signup profiles in a nation
    # Lists all signup profiles
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup
    # @option opts [String] :fields_signup_profiles Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [Array<(SignupProfileIndexResponse, Integer, Hash)>] SignupProfileIndexResponse data, response status code and response headers
    def list_signup_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignupProfilesApi.list_signup_profiles ..."
      end
      # resource path
      local_var_path = "/api/v2/signup_profiles"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[signup_profiles]"] = opts[:fields_signup_profiles] if !opts[:fields_signup_profiles].nil?
      query_params[:"page[number]"] = opts[:page_number] if !opts[:page_number].nil?
      query_params[:"page[size]"] = opts[:page_size] if !opts[:page_size].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "SignupProfileIndexResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"SignupProfilesApi.list_signup_profiles",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignupProfilesApi#list_signup_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Show signup profile with provided ID
    # Show signup profile with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup
    # @option opts [String] :fields_signup_profiles Comma-delimited list of attributes to only return in the response
    # @return [SignupProfileShowResponse]
    def show_signup_profile(id, opts = {})
      data, _status_code, _headers = show_signup_profile_with_http_info(id, opts)
      data
    end

    # Show signup profile with provided ID
    # Show signup profile with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup
    # @option opts [String] :fields_signup_profiles Comma-delimited list of attributes to only return in the response
    # @return [Array<(SignupProfileShowResponse, Integer, Hash)>] SignupProfileShowResponse data, response status code and response headers
    def show_signup_profile_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignupProfilesApi.show_signup_profile ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignupProfilesApi.show_signup_profile"
      end
      # resource path
      local_var_path = "/api/v2/signup_profiles/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[signup_profiles]"] = opts[:fields_signup_profiles] if !opts[:fields_signup_profiles].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "SignupProfileShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"SignupProfilesApi.show_signup_profile",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignupProfilesApi#show_signup_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update an existing signup profile
    # Updates an existing signup profile
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup
    # @option opts [String] :fields_signup_profiles Comma-delimited list of attributes to only return in the response
    # @option opts [SignupProfileUpdateRequest] :signup_profile_update_request
    # @return [SignupProfileShowResponse]
    def update_signup_profile(id, opts = {})
      data, _status_code, _headers = update_signup_profile_with_http_info(id, opts)
      data
    end

    # Update an existing signup profile
    # Updates an existing signup profile
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: signup
    # @option opts [String] :fields_signup_profiles Comma-delimited list of attributes to only return in the response
    # @option opts [SignupProfileUpdateRequest] :signup_profile_update_request
    # @return [Array<(SignupProfileShowResponse, Integer, Hash)>] SignupProfileShowResponse data, response status code and response headers
    def update_signup_profile_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignupProfilesApi.update_signup_profile ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignupProfilesApi.update_signup_profile"
      end
      # resource path
      local_var_path = "/api/v2/signup_profiles/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[signup_profiles]"] = opts[:fields_signup_profiles] if !opts[:fields_signup_profiles].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(["application/json"])
      if !content_type.nil?
          header_params["Content-Type"] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:signup_profile_update_request])

      # return_type
      return_type = opts[:debug_return_type] || "SignupProfileShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"SignupProfilesApi.update_signup_profile",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignupProfilesApi#update_signup_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
