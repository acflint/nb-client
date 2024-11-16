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
  class ListsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add signups
    # Add Signup IDs to list via an asynchronous process. Returns the token of an asynchronous process that can be queried using another endpoint. Accepts up to 10,000 signup IDs in a single payload.
    # @param id [String] id
    # @param add_signups_request [AddSignupsRequest]
    # @param [Hash] opts the optional parameters
    # @return [AddSignups202Response]
    def add_signups(id, add_signups_request, opts = {})
      data, _status_code, _headers = add_signups_with_http_info(id, add_signups_request, opts)
      data
    end

    # Add signups
    # Add Signup IDs to list via an asynchronous process. Returns the token of an asynchronous process that can be queried using another endpoint. Accepts up to 10,000 signup IDs in a single payload.
    # @param id [String] id
    # @param add_signups_request [AddSignupsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddSignups202Response, Integer, Hash)>] AddSignups202Response data, response status code and response headers
    def add_signups_with_http_info(id, add_signups_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.add_signups ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ListsApi.add_signups"
      end
      # verify the required parameter 'add_signups_request' is set
      if @api_client.config.client_side_validation && add_signups_request.nil?
        fail ArgumentError, "Missing the required parameter 'add_signups_request' when calling ListsApi.add_signups"
      end
      # resource path
      local_var_path = "/api/v2/lists/{id}/add_signups".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_signups_request)

      # return_type
      return_type = opts[:debug_return_type] || "AddSignups202Response"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"ListsApi.add_signups",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#add_signups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Create a list
    # Creates a list from given data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent
    # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
    # @option opts [ListCreateRequest] :list_create_request
    # @return [ListShowResponse]
    def create_list(opts = {})
      data, _status_code, _headers = create_list_with_http_info(opts)
      data
    end

    # Create a list
    # Creates a list from given data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent
    # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
    # @option opts [ListCreateRequest] :list_create_request
    # @return [Array<(ListShowResponse, Integer, Hash)>] ListShowResponse data, response status code and response headers
    def create_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.create_list ..."
      end
      # resource path
      local_var_path = "/api/v2/lists"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[lists]"] = opts[:fields_lists] if !opts[:fields_lists].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:list_create_request])

      # return_type
      return_type = opts[:debug_return_type] || "ListShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"ListsApi.create_list",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#create_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Delete list with provided ID
    # Delete list with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists
    # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
    # @return [EmptyMetaResponse]
    def delete_list(id, opts = {})
      data, _status_code, _headers = delete_list_with_http_info(id, opts)
      data
    end

    # Delete list with provided ID
    # Delete list with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists
    # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
    # @return [Array<(EmptyMetaResponse, Integer, Hash)>] EmptyMetaResponse data, response status code and response headers
    def delete_list_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.delete_list ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ListsApi.delete_list"
      end
      # resource path
      local_var_path = "/api/v2/lists/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[lists]"] = opts[:fields_lists] if !opts[:fields_lists].nil?

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
        operation: :"ListsApi.delete_list",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#delete_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # List all lists in a nation
    # Lists all lists
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent
    # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [ListIndexResponse]
    def list_lists(opts = {})
      data, _status_code, _headers = list_lists_with_http_info(opts)
      data
    end

    # List all lists in a nation
    # Lists all lists
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent
    # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [Array<(ListIndexResponse, Integer, Hash)>] ListIndexResponse data, response status code and response headers
    def list_lists_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.list_lists ..."
      end
      # resource path
      local_var_path = "/api/v2/lists"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[lists]"] = opts[:fields_lists] if !opts[:fields_lists].nil?
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
      return_type = opts[:debug_return_type] || "ListIndexResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"ListsApi.list_lists",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#list_lists\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # List all signups on the list for provided ID
    # Lists all signups for a given list
    # @param id [String] List id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures
    # @option opts [String] :fields_signups Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [SignupIndexResponse]
    def list_signup_listings(id, opts = {})
      data, _status_code, _headers = list_signup_listings_with_http_info(id, opts)
      data
    end

    # List all signups on the list for provided ID
    # Lists all signups for a given list
    # @param id [String] List id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, last_contacted_by, page, parent, precinct, recruiter, signup_profile, voter, signup_tags, memberships, path_journeys, taggings, petition_signatures
    # @option opts [String] :fields_signups Comma-delimited list of attributes to only return in the response
    # @option opts [String] :page_number Page number to list (starting at 1)
    # @option opts [String] :page_size Number of results to display per page (default: 20, max: 100, min: 1)
    # @return [Array<(SignupIndexResponse, Integer, Hash)>] SignupIndexResponse data, response status code and response headers
    def list_signup_listings_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.list_signup_listings ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ListsApi.list_signup_listings"
      end
      # resource path
      local_var_path = "/api/v2/lists/{id}/signups".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[signups]"] = opts[:fields_signups] if !opts[:fields_signups].nil?
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
      return_type = opts[:debug_return_type] || "SignupIndexResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"ListsApi.list_signup_listings",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#list_signup_listings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Remove signups
    # Remove Signup IDs from a list via an asynchronous process. Returns the token of an asynchronous process that can be queried using another endpoint. Accepts up to 10,000 signup IDs in a single payload.
    # @param id [String] id
    # @param remove_signups_request [RemoveSignupsRequest]
    # @param [Hash] opts the optional parameters
    # @return [AddSignups202Response]
    def remove_signups(id, remove_signups_request, opts = {})
      data, _status_code, _headers = remove_signups_with_http_info(id, remove_signups_request, opts)
      data
    end

    # Remove signups
    # Remove Signup IDs from a list via an asynchronous process. Returns the token of an asynchronous process that can be queried using another endpoint. Accepts up to 10,000 signup IDs in a single payload.
    # @param id [String] id
    # @param remove_signups_request [RemoveSignupsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddSignups202Response, Integer, Hash)>] AddSignups202Response data, response status code and response headers
    def remove_signups_with_http_info(id, remove_signups_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.remove_signups ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ListsApi.remove_signups"
      end
      # verify the required parameter 'remove_signups_request' is set
      if @api_client.config.client_side_validation && remove_signups_request.nil?
        fail ArgumentError, "Missing the required parameter 'remove_signups_request' when calling ListsApi.remove_signups"
      end
      # resource path
      local_var_path = "/api/v2/lists/{id}/remove_signups".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(remove_signups_request)

      # return_type
      return_type = opts[:debug_return_type] || "AddSignups202Response"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"ListsApi.remove_signups",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#remove_signups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Show list with provided ID
    # Show list with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists
    # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
    # @return [ListShowResponse]
    def show_list(id, opts = {})
      data, _status_code, _headers = show_list_with_http_info(id, opts)
      data
    end

    # Show list with provided ID
    # Show list with provided ID
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists
    # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
    # @return [Array<(ListShowResponse, Integer, Hash)>] ListShowResponse data, response status code and response headers
    def show_list_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.show_list ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ListsApi.show_list"
      end
      # resource path
      local_var_path = "/api/v2/lists/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[lists]"] = opts[:fields_lists] if !opts[:fields_lists].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"]) unless header_params["Accept"]

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "ListShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"ListsApi.show_list",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#show_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Add a tag to signups
    # Tag signups in list via an asynchronous process. If the tag does not exist it is created. Returns the token of an asyncrhronously process that can be queried using another endpoint.
    # @param id [String] id
    # @param tag_signups_request [TagSignupsRequest]
    # @param [Hash] opts the optional parameters
    # @return [AddSignups202Response]
    def tag_signups(id, tag_signups_request, opts = {})
      data, _status_code, _headers = tag_signups_with_http_info(id, tag_signups_request, opts)
      data
    end

    # Add a tag to signups
    # Tag signups in list via an asynchronous process. If the tag does not exist it is created. Returns the token of an asyncrhronously process that can be queried using another endpoint.
    # @param id [String] id
    # @param tag_signups_request [TagSignupsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddSignups202Response, Integer, Hash)>] AddSignups202Response data, response status code and response headers
    def tag_signups_with_http_info(id, tag_signups_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.tag_signups ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ListsApi.tag_signups"
      end
      # verify the required parameter 'tag_signups_request' is set
      if @api_client.config.client_side_validation && tag_signups_request.nil?
        fail ArgumentError, "Missing the required parameter 'tag_signups_request' when calling ListsApi.tag_signups"
      end
      # resource path
      local_var_path = "/api/v2/lists/{id}/tag".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tag_signups_request)

      # return_type
      return_type = opts[:debug_return_type] || "AddSignups202Response"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"ListsApi.tag_signups",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#tag_signups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Remove a tag from signups
    # Remove tag from signups in list via an asynchronous process. Returns the token of an asyncrhronously process that can be queried using another endpoint.
    # @param id [String] id
    # @param untag_signups_request [UntagSignupsRequest]
    # @param [Hash] opts the optional parameters
    # @return [AddSignups202Response]
    def untag_signups(id, untag_signups_request, opts = {})
      data, _status_code, _headers = untag_signups_with_http_info(id, untag_signups_request, opts)
      data
    end

    # Remove a tag from signups
    # Remove tag from signups in list via an asynchronous process. Returns the token of an asyncrhronously process that can be queried using another endpoint.
    # @param id [String] id
    # @param untag_signups_request [UntagSignupsRequest]
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddSignups202Response, Integer, Hash)>] AddSignups202Response data, response status code and response headers
    def untag_signups_with_http_info(id, untag_signups_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.untag_signups ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ListsApi.untag_signups"
      end
      # verify the required parameter 'untag_signups_request' is set
      if @api_client.config.client_side_validation && untag_signups_request.nil?
        fail ArgumentError, "Missing the required parameter 'untag_signups_request' when calling ListsApi.untag_signups"
      end
      # resource path
      local_var_path = "/api/v2/lists/{id}/untag".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(untag_signups_request)

      # return_type
      return_type = opts[:debug_return_type] || "AddSignups202Response"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"ListsApi.untag_signups",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#untag_signups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Update an existing list
    # Updates an existing list
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists
    # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
    # @option opts [ListUpdateRequest] :list_update_request
    # @return [ListShowResponse]
    def update_list(id, opts = {})
      data, _status_code, _headers = update_list_with_http_info(id, opts)
      data
    end

    # Update an existing list
    # Updates an existing list
    # @param id [String] id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :include Comma-delimited list of sideloaded resources to include as part of the response. See guidance [here](/api/v2/docs#overview--paginating-sideloads) about sideloading large numbers of resources and pagination.  Supported sideloads: author, signup, parent, mailings, lists
    # @option opts [String] :fields_lists Comma-delimited list of attributes to only return in the response
    # @option opts [ListUpdateRequest] :list_update_request
    # @return [Array<(ListShowResponse, Integer, Hash)>] ListShowResponse data, response status code and response headers
    def update_list_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ListsApi.update_list ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ListsApi.update_list"
      end
      # resource path
      local_var_path = "/api/v2/lists/{id}".sub("{" + "id" + "}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:include] = opts[:include] if !opts[:include].nil?
      query_params[:"fields[lists]"] = opts[:fields_lists] if !opts[:fields_lists].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:list_update_request])

      # return_type
      return_type = opts[:debug_return_type] || "ListShowResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["BearerAuth"]

      new_options = opts.merge(
        operation: :"ListsApi.update_list",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListsApi#update_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
