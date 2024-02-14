=begin
#CMS Url Redirects

#URL redirect operations

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Cms
    module UrlRedirects
      class RedirectsApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Delete a redirect
        # Delete one existing redirect, so it is no longer mapped.
        # @param url_redirect_id [String] The ID of the target redirect.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(url_redirect_id, opts = {})
          archive_with_http_info(url_redirect_id, opts)
          nil
        end

        # Delete a redirect
        # Delete one existing redirect, so it is no longer mapped.
        # @param url_redirect_id [String] The ID of the target redirect.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(url_redirect_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: RedirectsApi.archive ...'
          end
          # verify the required parameter 'url_redirect_id' is set
          if @api_client.config.client_side_validation && url_redirect_id.nil?
            fail ArgumentError, "Missing the required parameter 'url_redirect_id' when calling RedirectsApi.archive"
          end
          # resource path
          local_var_path = '/cms/v3/url-redirects/{urlRedirectId}'.sub('{' + 'urlRedirectId' + '}', CGI.escape(url_redirect_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type]

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"RedirectsApi.archive",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: RedirectsApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create a redirect
        # Creates and configures a new URL redirect.
        # @param url_mapping_create_request_body [UrlMappingCreateRequestBody] 
        # @param [Hash] opts the optional parameters
        # @return [UrlMapping]
        def create(url_mapping_create_request_body, opts = {})
          data, _status_code, _headers = create_with_http_info(url_mapping_create_request_body, opts)
          data
        end

        # Create a redirect
        # Creates and configures a new URL redirect.
        # @param url_mapping_create_request_body [UrlMappingCreateRequestBody] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(UrlMapping, Integer, Hash)>] UrlMapping data, response status code and response headers
        def create_with_http_info(url_mapping_create_request_body, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: RedirectsApi.create ...'
          end
          # verify the required parameter 'url_mapping_create_request_body' is set
          if @api_client.config.client_side_validation && url_mapping_create_request_body.nil?
            fail ArgumentError, "Missing the required parameter 'url_mapping_create_request_body' when calling RedirectsApi.create"
          end
          # resource path
          local_var_path = '/cms/v3/url-redirects/'

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          content_type = @api_client.select_header_content_type(['application/json'])
          if !content_type.nil?
              header_params['Content-Type'] = content_type
          end

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body] || @api_client.object_to_http_body(url_mapping_create_request_body)

          # return_type
          return_type = opts[:debug_return_type] || 'UrlMapping'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"RedirectsApi.create",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: RedirectsApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get details for a redirect
        # Returns the details for a single existing URL redirect by ID.
        # @param url_redirect_id [String] The ID of the target redirect.
        # @param [Hash] opts the optional parameters
        # @return [UrlMapping]
        def get_by_id(url_redirect_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(url_redirect_id, opts)
          data
        end

        # Get details for a redirect
        # Returns the details for a single existing URL redirect by ID.
        # @param url_redirect_id [String] The ID of the target redirect.
        # @param [Hash] opts the optional parameters
        # @return [Array<(UrlMapping, Integer, Hash)>] UrlMapping data, response status code and response headers
        def get_by_id_with_http_info(url_redirect_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: RedirectsApi.get_by_id ...'
          end
          # verify the required parameter 'url_redirect_id' is set
          if @api_client.config.client_side_validation && url_redirect_id.nil?
            fail ArgumentError, "Missing the required parameter 'url_redirect_id' when calling RedirectsApi.get_by_id"
          end
          # resource path
          local_var_path = '/cms/v3/url-redirects/{urlRedirectId}'.sub('{' + 'urlRedirectId' + '}', CGI.escape(url_redirect_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'UrlMapping'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"RedirectsApi.get_by_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: RedirectsApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get current redirects
        # Returns all existing URL redirects. Results can be limited and filtered by creation or updated date.
        # @param [Hash] opts the optional parameters
        # @option opts [Time] :created_at Only return redirects created on exactly this date.
        # @option opts [Time] :created_after Only return redirects created after this date.
        # @option opts [Time] :created_before Only return redirects created before this date.
        # @option opts [Time] :updated_at Only return redirects last updated on exactly this date.
        # @option opts [Time] :updated_after Only return redirects last updated after this date.
        # @option opts [Time] :updated_before Only return redirects last updated before this date.
        # @option opts [Array<String>] :sort 
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Integer] :limit Maximum number of result per page
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @return [CollectionResponseWithTotalUrlMappingForwardPaging]
        def get_page(opts = {})
          data, _status_code, _headers = get_page_with_http_info(opts)
          data
        end

        # Get current redirects
        # Returns all existing URL redirects. Results can be limited and filtered by creation or updated date.
        # @param [Hash] opts the optional parameters
        # @option opts [Time] :created_at Only return redirects created on exactly this date.
        # @option opts [Time] :created_after Only return redirects created after this date.
        # @option opts [Time] :created_before Only return redirects created before this date.
        # @option opts [Time] :updated_at Only return redirects last updated on exactly this date.
        # @option opts [Time] :updated_after Only return redirects last updated after this date.
        # @option opts [Time] :updated_before Only return redirects last updated before this date.
        # @option opts [Array<String>] :sort 
        # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
        # @option opts [Integer] :limit Maximum number of result per page
        # @option opts [Boolean] :archived Whether to return only results that have been archived.
        # @return [Array<(CollectionResponseWithTotalUrlMappingForwardPaging, Integer, Hash)>] CollectionResponseWithTotalUrlMappingForwardPaging data, response status code and response headers
        def get_page_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: RedirectsApi.get_page ...'
          end
          # resource path
          local_var_path = '/cms/v3/url-redirects/'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'createdAt'] = opts[:'created_at'] if !opts[:'created_at'].nil?
          query_params[:'createdAfter'] = opts[:'created_after'] if !opts[:'created_after'].nil?
          query_params[:'createdBefore'] = opts[:'created_before'] if !opts[:'created_before'].nil?
          query_params[:'updatedAt'] = opts[:'updated_at'] if !opts[:'updated_at'].nil?
          query_params[:'updatedAfter'] = opts[:'updated_after'] if !opts[:'updated_after'].nil?
          query_params[:'updatedBefore'] = opts[:'updated_before'] if !opts[:'updated_before'].nil?
          query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :multi) if !opts[:'sort'].nil?
          query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
          query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
          query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'CollectionResponseWithTotalUrlMappingForwardPaging'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"RedirectsApi.get_page",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: RedirectsApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update a redirect
        # Updates the settings for an existing URL redirect.
        # @param url_redirect_id [String] 
        # @param url_mapping [UrlMapping] 
        # @param [Hash] opts the optional parameters
        # @return [UrlMapping]
        def update(url_redirect_id, url_mapping, opts = {})
          data, _status_code, _headers = update_with_http_info(url_redirect_id, url_mapping, opts)
          data
        end

        # Update a redirect
        # Updates the settings for an existing URL redirect.
        # @param url_redirect_id [String] 
        # @param url_mapping [UrlMapping] 
        # @param [Hash] opts the optional parameters
        # @return [Array<(UrlMapping, Integer, Hash)>] UrlMapping data, response status code and response headers
        def update_with_http_info(url_redirect_id, url_mapping, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: RedirectsApi.update ...'
          end
          # verify the required parameter 'url_redirect_id' is set
          if @api_client.config.client_side_validation && url_redirect_id.nil?
            fail ArgumentError, "Missing the required parameter 'url_redirect_id' when calling RedirectsApi.update"
          end
          # verify the required parameter 'url_mapping' is set
          if @api_client.config.client_side_validation && url_mapping.nil?
            fail ArgumentError, "Missing the required parameter 'url_mapping' when calling RedirectsApi.update"
          end
          # resource path
          local_var_path = '/cms/v3/url-redirects/{urlRedirectId}'.sub('{' + 'urlRedirectId' + '}', CGI.escape(url_redirect_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          content_type = @api_client.select_header_content_type(['application/json'])
          if !content_type.nil?
              header_params['Content-Type'] = content_type
          end

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body] || @api_client.object_to_http_body(url_mapping)

          # return_type
          return_type = opts[:debug_return_type] || 'UrlMapping'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"RedirectsApi.update",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: RedirectsApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
