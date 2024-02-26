=begin
#Marketing Events

#These APIs allow you to interact with HubSpot's Marketing Events Extension. It allows you to: * Create, Read or update Marketing Event information in HubSpot * Specify whether a HubSpot contact has registered, attended or cancelled a registration to a Marketing Event. * Specify a URL that can be called to get the details of a Marketing Event. 

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Marketing
    module Events
      class BasicApi

        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Delete a marketing event
        # Deletes an existing Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to delete
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(external_event_id, external_account_id, opts = {})
          archive_with_http_info(external_event_id, external_account_id, opts)
          nil
        end

        # Delete a marketing event
        # Deletes an existing Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to delete
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(external_event_id, external_account_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.archive ...'
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling BasicApi.archive"
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling BasicApi.archive"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/{externalEventId}'.sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'externalAccountId'] = external_account_id

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
            :operation => :"BasicApi.archive",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create a marketing event
        # Creates a new marketing event in HubSpot
        # @param marketing_event_create_request_params [MarketingEventCreateRequestParams] The details of the marketing event to create
        # @param [Hash] opts the optional parameters
        # @return [MarketingEventDefaultResponse]
        def create(marketing_event_create_request_params, opts = {})
          data, _status_code, _headers = create_with_http_info(marketing_event_create_request_params, opts)
          data
        end

        # Create a marketing event
        # Creates a new marketing event in HubSpot
        # @param marketing_event_create_request_params [MarketingEventCreateRequestParams] The details of the marketing event to create
        # @param [Hash] opts the optional parameters
        # @return [Array<(MarketingEventDefaultResponse, Integer, Hash)>] MarketingEventDefaultResponse data, response status code and response headers
        def create_with_http_info(marketing_event_create_request_params, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.create ...'
          end
          # verify the required parameter 'marketing_event_create_request_params' is set
          if @api_client.config.client_side_validation && marketing_event_create_request_params.nil?
            fail ArgumentError, "Missing the required parameter 'marketing_event_create_request_params' when calling BasicApi.create"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events'

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(marketing_event_create_request_params)

          # return_type
          return_type = opts[:debug_return_type] || 'MarketingEventDefaultResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.create",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Mark a marketing event as cancelled
        # Mark a marketing event as cancelled.
        # @param external_event_id [String] The id of the marketing event to mark as cancelled
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [MarketingEventDefaultResponse]
        def do_cancel(external_event_id, external_account_id, opts = {})
          data, _status_code, _headers = do_cancel_with_http_info(external_event_id, external_account_id, opts)
          data
        end

        # Mark a marketing event as cancelled
        # Mark a marketing event as cancelled.
        # @param external_event_id [String] The id of the marketing event to mark as cancelled
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [Array<(MarketingEventDefaultResponse, Integer, Hash)>] MarketingEventDefaultResponse data, response status code and response headers
        def do_cancel_with_http_info(external_event_id, external_account_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.do_cancel ...'
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling BasicApi.do_cancel"
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling BasicApi.do_cancel"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/{externalEventId}/cancel'.sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'externalAccountId'] = external_account_id

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'MarketingEventDefaultResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.do_cancel",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#do_cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Get a marketing event
        # Returns the details of the Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to return
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [MarketingEventPublicReadResponse]
        def get_by_id(external_event_id, external_account_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(external_event_id, external_account_id, opts)
          data
        end

        # Get a marketing event
        # Returns the details of the Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to return
        # @param external_account_id [String] The account id associated with the marketing event
        # @param [Hash] opts the optional parameters
        # @return [Array<(MarketingEventPublicReadResponse, Integer, Hash)>] MarketingEventPublicReadResponse data, response status code and response headers
        def get_by_id_with_http_info(external_event_id, external_account_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.get_by_id ...'
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling BasicApi.get_by_id"
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling BasicApi.get_by_id"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/{externalEventId}'.sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'externalAccountId'] = external_account_id

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'MarketingEventPublicReadResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.get_by_id",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create or update a marketing event
        # Upsets a Marketing Event. If there is an existing Marketing event with the specified id, it will be updated; otherwise a new event will be created.
        # @param external_event_id [String] The id of the marketing event to upsert
        # @param marketing_event_create_request_params [MarketingEventCreateRequestParams] The details of the marketing event to upsert
        # @param [Hash] opts the optional parameters
        # @return [MarketingEventPublicDefaultResponse]
        def replace(external_event_id, marketing_event_create_request_params, opts = {})
          data, _status_code, _headers = replace_with_http_info(external_event_id, marketing_event_create_request_params, opts)
          data
        end

        # Create or update a marketing event
        # Upsets a Marketing Event. If there is an existing Marketing event with the specified id, it will be updated; otherwise a new event will be created.
        # @param external_event_id [String] The id of the marketing event to upsert
        # @param marketing_event_create_request_params [MarketingEventCreateRequestParams] The details of the marketing event to upsert
        # @param [Hash] opts the optional parameters
        # @return [Array<(MarketingEventPublicDefaultResponse, Integer, Hash)>] MarketingEventPublicDefaultResponse data, response status code and response headers
        def replace_with_http_info(external_event_id, marketing_event_create_request_params, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.replace ...'
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling BasicApi.replace"
          end
          # verify the required parameter 'marketing_event_create_request_params' is set
          if @api_client.config.client_side_validation && marketing_event_create_request_params.nil?
            fail ArgumentError, "Missing the required parameter 'marketing_event_create_request_params' when calling BasicApi.replace"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/{externalEventId}'.sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(marketing_event_create_request_params)

          # return_type
          return_type = opts[:debug_return_type] || 'MarketingEventPublicDefaultResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.replace",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#replace\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update a marketing event
        # Updates an existing Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to update
        # @param external_account_id [String] The account id associated with the marketing event
        # @param marketing_event_update_request_params [MarketingEventUpdateRequestParams] The details of the marketing event to update
        # @param [Hash] opts the optional parameters
        # @return [MarketingEventPublicDefaultResponse]
        def update(external_event_id, external_account_id, marketing_event_update_request_params, opts = {})
          data, _status_code, _headers = update_with_http_info(external_event_id, external_account_id, marketing_event_update_request_params, opts)
          data
        end

        # Update a marketing event
        # Updates an existing Marketing Event with the specified id, if one exists.
        # @param external_event_id [String] The id of the marketing event to update
        # @param external_account_id [String] The account id associated with the marketing event
        # @param marketing_event_update_request_params [MarketingEventUpdateRequestParams] The details of the marketing event to update
        # @param [Hash] opts the optional parameters
        # @return [Array<(MarketingEventPublicDefaultResponse, Integer, Hash)>] MarketingEventPublicDefaultResponse data, response status code and response headers
        def update_with_http_info(external_event_id, external_account_id, marketing_event_update_request_params, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: BasicApi.update ...'
          end
          # verify the required parameter 'external_event_id' is set
          if @api_client.config.client_side_validation && external_event_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_event_id' when calling BasicApi.update"
          end
          # verify the required parameter 'external_account_id' is set
          if @api_client.config.client_side_validation && external_account_id.nil?
            fail ArgumentError, "Missing the required parameter 'external_account_id' when calling BasicApi.update"
          end
          # verify the required parameter 'marketing_event_update_request_params' is set
          if @api_client.config.client_side_validation && marketing_event_update_request_params.nil?
            fail ArgumentError, "Missing the required parameter 'marketing_event_update_request_params' when calling BasicApi.update"
          end
          # resource path
          local_var_path = '/marketing/v3/marketing-events/events/{externalEventId}'.sub('{' + 'externalEventId' + '}', CGI.escape(external_event_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'externalAccountId'] = external_account_id

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(marketing_event_update_request_params)

          # return_type
          return_type = opts[:debug_return_type] || 'MarketingEventPublicDefaultResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['oauth2']

          new_options = opts.merge(
            :operation => :"BasicApi.update",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: BasicApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
