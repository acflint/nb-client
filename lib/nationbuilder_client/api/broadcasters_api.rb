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
  class BroadcastersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List all broadcasters in a nation
    # Lists all broadcasters
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, voicemail_point_person, text_point_person
    # @option opts [String] :fields_broadcasters Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [BroadcasterIndexResponse]
    def list_broadcasters(opts = {})
      data, _status_code, _headers = list_broadcasters_with_http_info(opts)
      data
    end

    # List all broadcasters in a nation
    # Lists all broadcasters
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, voicemail_point_person, text_point_person
    # @option opts [String] :fields_broadcasters Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [Array<(BroadcasterIndexResponse, Integer, Hash)>] BroadcasterIndexResponse data, response status code and response headers
    def list_broadcasters_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BroadcastersApi.list_broadcasters ..."
      end
      # resource path
      local_var_path = "/api/v2/broadcasters"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[broadcasters]"] = opts[:fields_broadcasters] if !opts[:fields_broadcasters].nil?
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
      return_type = opts[:debug_return_type] || "BroadcasterIndexResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"BroadcastersApi.list_broadcasters",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BroadcastersApi#list_broadcasters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Show broadcaster with provided ID
    # Show broadcaster with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, voicemail_point_person, text_point_person, mailings, signups
    # @option opts [String] :fields_broadcasters Comma-delimited list of attributes to only return in the response
    # @return [BroadcasterShowResponse]
    def show_broadcaster(id, opts = {})
      data, _status_code, _headers = show_broadcaster_with_http_info(id, opts)
      data
    end

    # Show broadcaster with provided ID
    # Show broadcaster with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: point_person, voicemail_point_person, text_point_person, mailings, signups
    # @option opts [String] :fields_broadcasters Comma-delimited list of attributes to only return in the response
    # @return [Array<(BroadcasterShowResponse, Integer, Hash)>] BroadcasterShowResponse data, response status code and response headers
    def show_broadcaster_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BroadcastersApi.show_broadcaster ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BroadcastersApi.show_broadcaster"
      end
      # resource path
      local_var_path = "/api/v2/broadcasters/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[broadcasters]"] = opts[:fields_broadcasters] if !opts[:fields_broadcasters].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "BroadcasterShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"BroadcastersApi.show_broadcaster",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BroadcastersApi#show_broadcaster\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
