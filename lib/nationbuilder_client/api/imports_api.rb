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
  class ImportsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List all imports in a nation
    # List all imports
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, author, terminator
    # @option opts [String] :fields_imports Comma-delimited list of attributes to only return in the response
    # @return [ImportIndexResponse]
    def list_imports(opts = {})
      data, _status_code, _headers = list_imports_with_http_info(opts)
      data
    end

    # List all imports in a nation
    # List all imports
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, author, terminator
    # @option opts [String] :fields_imports Comma-delimited list of attributes to only return in the response
    # @return [Array<(ImportIndexResponse, Integer, Hash)>] ImportIndexResponse data, response status code and response headers
    def list_imports_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ImportsApi.list_imports ..."
      end
      # resource path
      local_var_path = "/api/v2/imports"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[imports]"] = opts[:fields_imports] if !opts[:fields_imports].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "ImportIndexResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"ImportsApi.list_imports",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImportsApi#list_imports\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Show import with provided ID
    # Show import with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, author, terminator, signups
    # @option opts [String] :fields_imports Comma-delimited list of attributes to only return in the response
    # @return [ImportShowResponse]
    def show_import(id, opts = {})
      data, _status_code, _headers = show_import_with_http_info(id, opts)
      data
    end

    # Show import with provided ID
    # Show import with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, author, terminator, signups
    # @option opts [String] :fields_imports Comma-delimited list of attributes to only return in the response
    # @return [Array<(ImportShowResponse, Integer, Hash)>] ImportShowResponse data, response status code and response headers
    def show_import_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ImportsApi.show_import ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ImportsApi.show_import"
      end
      # resource path
      local_var_path = "/api/v2/imports/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[imports]"] = opts[:fields_imports] if !opts[:fields_imports].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "ImportShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"ImportsApi.show_import",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ImportsApi#show_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end