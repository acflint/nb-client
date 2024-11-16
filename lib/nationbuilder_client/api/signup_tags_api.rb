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
  class SignupTagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create a signup tag
    # Creates a signup tag from given data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)
    # @option opts [String] :fields_signup_tags Comma-delimited list of attributes to only return in the response
    # @option opts [SignupTagCreateRequest] :signup_tag_create_request
    # @return [SignupTagShowResponse]
    def create_signup_tag(opts = {})
      data, _status_code, _headers = create_signup_tag_with_http_info(opts)
      data
    end

    # Create a signup tag
    # Creates a signup tag from given data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)
    # @option opts [String] :fields_signup_tags Comma-delimited list of attributes to only return in the response
    # @option opts [SignupTagCreateRequest] :signup_tag_create_request
    # @return [Array<(SignupTagShowResponse, Integer, Hash)>] SignupTagShowResponse data, response status code and response headers
    def create_signup_tag_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignupTagsApi.create_signup_tag ..."
      end
      # resource path
      local_var_path = "/api/v2/signup_tags"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[signup_tags]"] = opts[:fields_signup_tags] if !opts[:fields_signup_tags].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:signup_tag_create_request])

      # return_type
      return_type = opts[:debug_return_type] || "SignupTagShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"SignupTagsApi.create_signup_tag",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignupTagsApi#create_signup_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete signup tag with provided ID
    # Delete signup_tag with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups
    # @option opts [String] :fields_signup_tags Comma-delimited list of attributes to only return in the response
    # @return [EmptyMetaResponse]
    def delete_signup_tag(id, opts = {})
      data, _status_code, _headers = delete_signup_tag_with_http_info(id, opts)
      data
    end

    # Delete signup tag with provided ID
    # Delete signup_tag with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups
    # @option opts [String] :fields_signup_tags Comma-delimited list of attributes to only return in the response
    # @return [Array<(EmptyMetaResponse, Integer, Hash)>] EmptyMetaResponse data, response status code and response headers
    def delete_signup_tag_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignupTagsApi.delete_signup_tag ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignupTagsApi.delete_signup_tag"
      end
      # resource path
      local_var_path = "/api/v2/signup_tags/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[signup_tags]"] = opts[:fields_signup_tags] if !opts[:fields_signup_tags].nil?

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
        operation: :"SignupTagsApi.delete_signup_tag",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignupTagsApi#delete_signup_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # List all signup tags in a nation
    # Lists all signup tags
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)
    # @option opts [String] :fields_signup_tags Comma-delimited list of attributes to only return in the response
    # @option opts [String] :filter_signup_id
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [SignupTagIndexResponse]
    def list_signup_tags(opts = {})
      data, _status_code, _headers = list_signup_tags_with_http_info(opts)
      data
    end

    # List all signup tags in a nation
    # Lists all signup tags
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: (none)
    # @option opts [String] :fields_signup_tags Comma-delimited list of attributes to only return in the response
    # @option opts [String] :filter_signup_id
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [Array<(SignupTagIndexResponse, Integer, Hash)>] SignupTagIndexResponse data, response status code and response headers
    def list_signup_tags_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignupTagsApi.list_signup_tags ..."
      end
      # resource path
      local_var_path = "/api/v2/signup_tags"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[signup_tags]"] = opts[:fields_signup_tags] if !opts[:fields_signup_tags].nil?
      query_params[:"filter[signup_id]"] = opts[:filter_signup_id] if !opts[:filter_signup_id].nil?
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
      return_type = opts[:debug_return_type] || "SignupTagIndexResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"SignupTagsApi.list_signup_tags",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignupTagsApi#list_signup_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Show signup tag with provided ID
    # Show signup tag with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups
    # @option opts [String] :fields_signup_tags Comma-delimited list of attributes to only return in the response
    # @return [SignupTagShowResponse]
    def show_signup_tag(id, opts = {})
      data, _status_code, _headers = show_signup_tag_with_http_info(id, opts)
      data
    end

    # Show signup tag with provided ID
    # Show signup tag with provided ID
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups
    # @option opts [String] :fields_signup_tags Comma-delimited list of attributes to only return in the response
    # @return [Array<(SignupTagShowResponse, Integer, Hash)>] SignupTagShowResponse data, response status code and response headers
    def show_signup_tag_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignupTagsApi.show_signup_tag ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignupTagsApi.show_signup_tag"
      end
      # resource path
      local_var_path = "/api/v2/signup_tags/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[signup_tags]"] = opts[:fields_signup_tags] if !opts[:fields_signup_tags].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "SignupTagShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"SignupTagsApi.show_signup_tag",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignupTagsApi#show_signup_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update an existing signup tag
    # Updates an existing signup tag
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups
    # @option opts [String] :fields_signup_tags Comma-delimited list of attributes to only return in the response
    # @option opts [SignupTagUpdateRequest] :signup_tag_update_request
    # @return [SignupTagShowResponse]
    def update_signup_tag(id, opts = {})
      data, _status_code, _headers = update_signup_tag_with_http_info(id, opts)
      data
    end

    # Update an existing signup tag
    # Updates an existing signup tag
    # @param id [String]
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: taggings, signups
    # @option opts [String] :fields_signup_tags Comma-delimited list of attributes to only return in the response
    # @option opts [SignupTagUpdateRequest] :signup_tag_update_request
    # @return [Array<(SignupTagShowResponse, Integer, Hash)>] SignupTagShowResponse data, response status code and response headers
    def update_signup_tag_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SignupTagsApi.update_signup_tag ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SignupTagsApi.update_signup_tag"
      end
      # resource path
      local_var_path = "/api/v2/signup_tags/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[signup_tags]"] = opts[:fields_signup_tags] if !opts[:fields_signup_tags].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:signup_tag_update_request])

      # return_type
      return_type = opts[:debug_return_type] || "SignupTagShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"SignupTagsApi.update_signup_tag",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SignupTagsApi#update_signup_tag\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
