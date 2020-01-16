=begin
#Properties

#All HubSpot objects store data in default and custom properties. These endpoints provide access to read and modify object properties in HubSpot.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module Hubspot
  module Client
    module Crm
      module Properties
        module Api
          class GroupsApi
            attr_accessor :api_client

            def initialize(api_client = ApiClient.default)
              @api_client = api_client
            end
            # Archive a property group
            # Move a property group identified by {groupName} to the recycling bin.
            # @param object_type [String] 
            # @param group_name [String] 
            # @param [Hash] opts the optional parameters
            # @return [nil]
            def delete_crm_v3_properties_object_type_groups_group_name(object_type, group_name, opts = {})
              delete_crm_v3_properties_object_type_groups_group_name_with_http_info(object_type, group_name, opts)
              nil
            end

            # Archive a property group
            # Move a property group identified by {groupName} to the recycling bin.
            # @param object_type [String] 
            # @param group_name [String] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
            def delete_crm_v3_properties_object_type_groups_group_name_with_http_info(object_type, group_name, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: GroupsApi.delete_crm_v3_properties_object_type_groups_group_name ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling GroupsApi.delete_crm_v3_properties_object_type_groups_group_name"
              end
              # verify the required parameter 'group_name' is set
              if @api_client.config.client_side_validation && group_name.nil?
                fail ArgumentError, "Missing the required parameter 'group_name' when calling GroupsApi.delete_crm_v3_properties_object_type_groups_group_name"
              end
              # resource path
              local_var_path = '/{objectType}/groups/{groupName}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'groupName' + '}', CGI.escape(group_name.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: GroupsApi#delete_crm_v3_properties_object_type_groups_group_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Read all property groups
            # Read all existing property groups for the specified object type and HubSpot account.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @return [CollectionResponsePropertyGroup]
            def get_crm_v3_properties_object_type_groups(object_type, opts = {})
              data, _status_code, _headers = get_crm_v3_properties_object_type_groups_with_http_info(object_type, opts)
              data
            end

            # Read all property groups
            # Read all existing property groups for the specified object type and HubSpot account.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(CollectionResponsePropertyGroup, Integer, Hash)>] CollectionResponsePropertyGroup data, response status code and response headers
            def get_crm_v3_properties_object_type_groups_with_http_info(object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: GroupsApi.get_crm_v3_properties_object_type_groups ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling GroupsApi.get_crm_v3_properties_object_type_groups"
              end
              # resource path
              local_var_path = '/{objectType}/groups'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] || 'CollectionResponsePropertyGroup' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: GroupsApi#get_crm_v3_properties_object_type_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Read a property group
            # Read a property group identified by {groupName}.
            # @param object_type [String] 
            # @param group_name [String] 
            # @param [Hash] opts the optional parameters
            # @return [PropertyGroup]
            def get_crm_v3_properties_object_type_groups_group_name(object_type, group_name, opts = {})
              data, _status_code, _headers = get_crm_v3_properties_object_type_groups_group_name_with_http_info(object_type, group_name, opts)
              data
            end

            # Read a property group
            # Read a property group identified by {groupName}.
            # @param object_type [String] 
            # @param group_name [String] 
            # @param [Hash] opts the optional parameters
            # @return [Array<(PropertyGroup, Integer, Hash)>] PropertyGroup data, response status code and response headers
            def get_crm_v3_properties_object_type_groups_group_name_with_http_info(object_type, group_name, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: GroupsApi.get_crm_v3_properties_object_type_groups_group_name ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling GroupsApi.get_crm_v3_properties_object_type_groups_group_name"
              end
              # verify the required parameter 'group_name' is set
              if @api_client.config.client_side_validation && group_name.nil?
                fail ArgumentError, "Missing the required parameter 'group_name' when calling GroupsApi.get_crm_v3_properties_object_type_groups_group_name"
              end
              # resource path
              local_var_path = '/{objectType}/groups/{groupName}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'groupName' + '}', CGI.escape(group_name.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] 

              # return_type
              return_type = opts[:return_type] || 'PropertyGroup' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: GroupsApi#get_crm_v3_properties_object_type_groups_group_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Update a property group
            # Perform a partial update of a property group identified by {groupName}. Provided fields will be overwritten.
            # @param object_type [String] 
            # @param group_name [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PropertyGroupUpdate] :property_group_update 
            # @return [PropertyGroup]
            def patch_crm_v3_properties_object_type_groups_group_name(object_type, group_name, opts = {})
              data, _status_code, _headers = patch_crm_v3_properties_object_type_groups_group_name_with_http_info(object_type, group_name, opts)
              data
            end

            # Update a property group
            # Perform a partial update of a property group identified by {groupName}. Provided fields will be overwritten.
            # @param object_type [String] 
            # @param group_name [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PropertyGroupUpdate] :property_group_update 
            # @return [Array<(PropertyGroup, Integer, Hash)>] PropertyGroup data, response status code and response headers
            def patch_crm_v3_properties_object_type_groups_group_name_with_http_info(object_type, group_name, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: GroupsApi.patch_crm_v3_properties_object_type_groups_group_name ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling GroupsApi.patch_crm_v3_properties_object_type_groups_group_name"
              end
              # verify the required parameter 'group_name' is set
              if @api_client.config.client_side_validation && group_name.nil?
                fail ArgumentError, "Missing the required parameter 'group_name' when calling GroupsApi.patch_crm_v3_properties_object_type_groups_group_name"
              end
              # resource path
              local_var_path = '/{objectType}/groups/{groupName}'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s)).sub('{' + 'groupName' + '}', CGI.escape(group_name.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'property_group_update']) 

              # return_type
              return_type = opts[:return_type] || 'PropertyGroup' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: GroupsApi#patch_crm_v3_properties_object_type_groups_group_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end

            # Create a property group
            # Create and return a copy of a new property group.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PropertyGroupCreate] :property_group_create 
            # @return [PropertyGroup]
            def post_crm_v3_properties_object_type_groups(object_type, opts = {})
              data, _status_code, _headers = post_crm_v3_properties_object_type_groups_with_http_info(object_type, opts)
              data
            end

            # Create a property group
            # Create and return a copy of a new property group.
            # @param object_type [String] 
            # @param [Hash] opts the optional parameters
            # @option opts [PropertyGroupCreate] :property_group_create 
            # @return [Array<(PropertyGroup, Integer, Hash)>] PropertyGroup data, response status code and response headers
            def post_crm_v3_properties_object_type_groups_with_http_info(object_type, opts = {})
              if @api_client.config.debugging
                @api_client.config.logger.debug 'Calling API: GroupsApi.post_crm_v3_properties_object_type_groups ...'
              end
              # verify the required parameter 'object_type' is set
              if @api_client.config.client_side_validation && object_type.nil?
                fail ArgumentError, "Missing the required parameter 'object_type' when calling GroupsApi.post_crm_v3_properties_object_type_groups"
              end
              # resource path
              local_var_path = '/{objectType}/groups'.sub('{' + 'objectType' + '}', CGI.escape(object_type.to_s))

              # query parameters
              query_params = opts[:query_params] || {}

              # header parameters
              header_params = opts[:header_params] || {}
              # HTTP header 'Accept' (if needed)
              header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
              # HTTP header 'Content-Type'
              header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

              # form parameters
              form_params = opts[:form_params] || {}

              # http body (model)
              post_body = opts[:body] || @api_client.object_to_http_body(opts[:'property_group_create']) 

              # return_type
              return_type = opts[:return_type] || 'PropertyGroup' 

              # auth_names
              auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

              new_options = opts.merge(
                :header_params => header_params,
                :query_params => query_params,
                :form_params => form_params,
                :body => post_body,
                :auth_names => auth_names,
                :return_type => return_type
              )

              data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
              if @api_client.config.debugging
                @api_client.config.logger.debug "API called: GroupsApi#post_crm_v3_properties_object_type_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
              end
              return data, status_code, headers
            end
          end
        end
      end
    end
  end
end