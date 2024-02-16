=begin
#CRM Timeline

#This feature allows an app to create and configure custom events that can show up in the timelines of certain CRM objects like contacts, companies, tickets, or deals. You'll find multiple use cases for this API in the sections below.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Timeline
      class TokensApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Removes a token from the event template
        # This will remove the token from an existing template. Existing events and CRM objects will still retain the token and its mapped object properties, but new ones will not.  The timeline will still display this property for older CRM objects if it's still referenced in the template `Markdown`. New events will not.  Any lists or reports referencing deleted tokens will no longer return new contacts, but old ones will still exist in the lists.
        # @param event_template_id [String] The event template ID.
        # @param token_name [String] The token name.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(event_template_id, token_name, app_id, opts = {})
          archive_with_http_info(event_template_id, token_name, app_id, opts)
          nil
        end

        # Removes a token from the event template
        # This will remove the token from an existing template. Existing events and CRM objects will still retain the token and its mapped object properties, but new ones will not.  The timeline will still display this property for older CRM objects if it&#39;s still referenced in the template &#x60;Markdown&#x60;. New events will not.  Any lists or reports referencing deleted tokens will no longer return new contacts, but old ones will still exist in the lists.
        # @param event_template_id [String] The event template ID.
        # @param token_name [String] The token name.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(event_template_id, token_name, app_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: TokensApi.archive ...'
          end
          # verify the required parameter 'event_template_id' is set
          if @api_client.config.client_side_validation && event_template_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_template_id' when calling TokensApi.archive"
          end
          # verify the required parameter 'token_name' is set
          if @api_client.config.client_side_validation && token_name.nil?
            fail ArgumentError, "Missing the required parameter 'token_name' when calling TokensApi.archive"
          end
          # verify the required parameter 'app_id' is set
          if @api_client.config.client_side_validation && app_id.nil?
            fail ArgumentError, "Missing the required parameter 'app_id' when calling TokensApi.archive"
          end
          # resource path
          local_var_path = '/crm/v3/timeline/{appId}/event-templates/{eventTemplateId}/tokens/{tokenName}'.sub('{' + 'eventTemplateId' + '}', CGI.escape(event_template_id.to_s)).sub('{' + 'tokenName' + '}', CGI.escape(token_name.to_s)).sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
          auth_names = opts[:debug_auth_names] || ['developer_hapikey']

          new_options = opts.merge(
            :operation => :"TokensApi.archive",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: TokensApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Adds a token to an existing event template
        # Once you've defined an event template, it's likely that you'll want to define tokens for it as well. You can do this on the event template itself or update individual tokens here.  Event type tokens allow you to attach custom data to events displayed in a timeline or used for list segmentation.  You can also use `objectPropertyName` to associate any CRM object properties. This will allow you to fully build out CRM objects.  Token names should be unique across the template.
        # @param event_template_id [String] The event template ID.
        # @param app_id [Integer] The ID of the target app.
        # @param timeline_event_template_token [TimelineEventTemplateToken] The new token definition.
        # @param [Hash] opts the optional parameters
        # @return [TimelineEventTemplateToken]
        def create(event_template_id, app_id, timeline_event_template_token, opts = {})
          data, _status_code, _headers = create_with_http_info(event_template_id, app_id, timeline_event_template_token, opts)
          data
        end

        # Adds a token to an existing event template
        # Once you&#39;ve defined an event template, it&#39;s likely that you&#39;ll want to define tokens for it as well. You can do this on the event template itself or update individual tokens here.  Event type tokens allow you to attach custom data to events displayed in a timeline or used for list segmentation.  You can also use &#x60;objectPropertyName&#x60; to associate any CRM object properties. This will allow you to fully build out CRM objects.  Token names should be unique across the template.
        # @param event_template_id [String] The event template ID.
        # @param app_id [Integer] The ID of the target app.
        # @param timeline_event_template_token [TimelineEventTemplateToken] The new token definition.
        # @param [Hash] opts the optional parameters
        # @return [Array<(TimelineEventTemplateToken, Integer, Hash)>] TimelineEventTemplateToken data, response status code and response headers
        def create_with_http_info(event_template_id, app_id, timeline_event_template_token, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: TokensApi.create ...'
          end
          # verify the required parameter 'event_template_id' is set
          if @api_client.config.client_side_validation && event_template_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_template_id' when calling TokensApi.create"
          end
          # verify the required parameter 'app_id' is set
          if @api_client.config.client_side_validation && app_id.nil?
            fail ArgumentError, "Missing the required parameter 'app_id' when calling TokensApi.create"
          end
          # verify the required parameter 'timeline_event_template_token' is set
          if @api_client.config.client_side_validation && timeline_event_template_token.nil?
            fail ArgumentError, "Missing the required parameter 'timeline_event_template_token' when calling TokensApi.create"
          end
          # resource path
          local_var_path = '/crm/v3/timeline/{appId}/event-templates/{eventTemplateId}/tokens'.sub('{' + 'eventTemplateId' + '}', CGI.escape(event_template_id.to_s)).sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(timeline_event_template_token)

          # return_type
          return_type = opts[:debug_return_type] || 'TimelineEventTemplateToken'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['developer_hapikey']

          new_options = opts.merge(
            :operation => :"TokensApi.create",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: TokensApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Updates an existing token on an event template
        # This will update the existing token on an event template. Name and type can't be changed on existing tokens.
        # @param event_template_id [String] The event template ID.
        # @param token_name [String] The token name.
        # @param app_id [Integer] The ID of the target app.
        # @param timeline_event_template_token_update_request [TimelineEventTemplateTokenUpdateRequest] The updated token definition.
        # @param [Hash] opts the optional parameters
        # @return [TimelineEventTemplateToken]
        def update(event_template_id, token_name, app_id, timeline_event_template_token_update_request, opts = {})
          data, _status_code, _headers = update_with_http_info(event_template_id, token_name, app_id, timeline_event_template_token_update_request, opts)
          data
        end

        # Updates an existing token on an event template
        # This will update the existing token on an event template. Name and type can&#39;t be changed on existing tokens.
        # @param event_template_id [String] The event template ID.
        # @param token_name [String] The token name.
        # @param app_id [Integer] The ID of the target app.
        # @param timeline_event_template_token_update_request [TimelineEventTemplateTokenUpdateRequest] The updated token definition.
        # @param [Hash] opts the optional parameters
        # @return [Array<(TimelineEventTemplateToken, Integer, Hash)>] TimelineEventTemplateToken data, response status code and response headers
        def update_with_http_info(event_template_id, token_name, app_id, timeline_event_template_token_update_request, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: TokensApi.update ...'
          end
          # verify the required parameter 'event_template_id' is set
          if @api_client.config.client_side_validation && event_template_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_template_id' when calling TokensApi.update"
          end
          # verify the required parameter 'token_name' is set
          if @api_client.config.client_side_validation && token_name.nil?
            fail ArgumentError, "Missing the required parameter 'token_name' when calling TokensApi.update"
          end
          # verify the required parameter 'app_id' is set
          if @api_client.config.client_side_validation && app_id.nil?
            fail ArgumentError, "Missing the required parameter 'app_id' when calling TokensApi.update"
          end
          # verify the required parameter 'timeline_event_template_token_update_request' is set
          if @api_client.config.client_side_validation && timeline_event_template_token_update_request.nil?
            fail ArgumentError, "Missing the required parameter 'timeline_event_template_token_update_request' when calling TokensApi.update"
          end
          # resource path
          local_var_path = '/crm/v3/timeline/{appId}/event-templates/{eventTemplateId}/tokens/{tokenName}'.sub('{' + 'eventTemplateId' + '}', CGI.escape(event_template_id.to_s)).sub('{' + 'tokenName' + '}', CGI.escape(token_name.to_s)).sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

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
          post_body = opts[:debug_body] || @api_client.object_to_http_body(timeline_event_template_token_update_request)

          # return_type
          return_type = opts[:debug_return_type] || 'TimelineEventTemplateToken'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['developer_hapikey']

          new_options = opts.merge(
            :operation => :"TokensApi.update",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: TokensApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
