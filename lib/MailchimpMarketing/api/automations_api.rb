=begin
#Mailchimp Marketing API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 3.0.24
Contact: apihelp@mailchimp.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.12

=end

require 'uri'

module MailchimpMarketing
  class AutomationsApi
    attr_accessor :api_client

    def initialize(api_client)
      @api_client = api_client
    end

    # Archive automation
    def archive(workflow_id, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/actions/archive'.sub('{' + 'workflow_id' + '}', workflow_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Delete workflow email
    def delete_workflow_email(workflow_id, workflow_email_id, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?
      fail ArgumentError, "Missing required param: 'workflow_email_id'" if workflow_email_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/emails/{workflow_email_id}'.sub('{' + 'workflow_id' + '}', workflow_id.to_s).sub('{' + 'workflow_email_id' + '}', workflow_email_id.to_s)
      data = @api_client.call_api(:DELETE, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List automations
    def list(opts = {})
      fail ArgumentError, 'invalid value for "opts[:"count"]", must be smaller than or equal to 1000.' if !opts[:'count'].nil? && opts[:'count'] > 1000
      fail ArgumentError, 'invalid value for "status", must be one of save, paused, sending' if opts[:'status'] && !['save', 'paused', 'sending'].include?(opts[:'status'])

      query_params = {}
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      query_params[:'before_create_time'] = opts[:'before_create_time'] if !opts[:'before_create_time'].nil?
      query_params[:'since_create_time'] = opts[:'since_create_time'] if !opts[:'since_create_time'].nil?
      query_params[:'before_start_time'] = opts[:'before_start_time'] if !opts[:'before_start_time'].nil?
      query_params[:'since_start_time'] = opts[:'since_start_time'] if !opts[:'since_start_time'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      post_body = nil

      local_var_path = '/automations'
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get automation info
    def get(workflow_id, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?

      query_params = {}
      query_params[:'fields'] = @api_client.build_collection_param(opts[:'fields'], :csv) if !opts[:'fields'].nil?
      query_params[:'exclude_fields'] = @api_client.build_collection_param(opts[:'exclude_fields'], :csv) if !opts[:'exclude_fields'].nil?
      post_body = nil

      local_var_path = '/automations/{workflow_id}'.sub('{' + 'workflow_id' + '}', workflow_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List automated emails
    def list_all_workflow_emails(workflow_id, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/emails'.sub('{' + 'workflow_id' + '}', workflow_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get workflow email info
    def get_workflow_email(workflow_id, workflow_email_id, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?
      fail ArgumentError, "Missing required param: 'workflow_email_id'" if workflow_email_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/emails/{workflow_email_id}'.sub('{' + 'workflow_id' + '}', workflow_id.to_s).sub('{' + 'workflow_email_id' + '}', workflow_email_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List automated email subscribers
    def get_workflow_email_subscriber_queue(workflow_id, workflow_email_id, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?
      fail ArgumentError, "Missing required param: 'workflow_email_id'" if workflow_email_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/emails/{workflow_email_id}/queue'.sub('{' + 'workflow_id' + '}', workflow_id.to_s).sub('{' + 'workflow_email_id' + '}', workflow_email_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get automated email subscriber
    def get_workflow_email_subscriber(workflow_id, workflow_email_id, subscriber_hash, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?
      fail ArgumentError, "Missing required param: 'workflow_email_id'" if workflow_email_id.nil?
      fail ArgumentError, "Missing required param: 'subscriber_hash'" if subscriber_hash.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/emails/{workflow_email_id}/queue/{subscriber_hash}'.sub('{' + 'workflow_id' + '}', workflow_id.to_s).sub('{' + 'workflow_email_id' + '}', workflow_email_id.to_s).sub('{' + 'subscriber_hash' + '}', subscriber_hash.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # List subscribers removed from workflow
    def list_workflow_email_subscribers_removed(workflow_id, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/removed-subscribers'.sub('{' + 'workflow_id' + '}', workflow_id.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Get subscriber removed from workflow
    def get_removed_workflow_email_subscriber(workflow_id, subscriber_hash, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?
      fail ArgumentError, "Missing required param: 'subscriber_hash'" if subscriber_hash.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/removed-subscribers/{subscriber_hash}'.sub('{' + 'workflow_id' + '}', workflow_id.to_s).sub('{' + 'subscriber_hash' + '}', subscriber_hash.to_s)
      data = @api_client.call_api(:GET, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Update workflow email
    def update_workflow_email(workflow_id, workflow_email_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?
      fail ArgumentError, "Missing required param: 'workflow_email_id'" if workflow_email_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/automations/{workflow_id}/emails/{workflow_email_id}'.sub('{' + 'workflow_id' + '}', workflow_id.to_s).sub('{' + 'workflow_email_id' + '}', workflow_email_id.to_s)
      data = @api_client.call_api(:PATCH, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Add automation
    def create(body, opts = {})
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/automations'
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Pause automation emails
    def pause_all_emails(workflow_id, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/actions/pause-all-emails'.sub('{' + 'workflow_id' + '}', workflow_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Start automation emails
    def start_all_emails(workflow_id, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/actions/start-all-emails'.sub('{' + 'workflow_id' + '}', workflow_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Pause automated email
    def pause_workflow_email(workflow_id, workflow_email_id, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?
      fail ArgumentError, "Missing required param: 'workflow_email_id'" if workflow_email_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/emails/{workflow_email_id}/actions/pause'.sub('{' + 'workflow_id' + '}', workflow_id.to_s).sub('{' + 'workflow_email_id' + '}', workflow_email_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Start automated email
    def start_workflow_email(workflow_id, workflow_email_id, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?
      fail ArgumentError, "Missing required param: 'workflow_email_id'" if workflow_email_id.nil?

      query_params = {}
      post_body = nil

      local_var_path = '/automations/{workflow_id}/emails/{workflow_email_id}/actions/start'.sub('{' + 'workflow_id' + '}', workflow_id.to_s).sub('{' + 'workflow_email_id' + '}', workflow_email_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Add subscriber to workflow email
    def add_workflow_email_subscriber(workflow_id, workflow_email_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?
      fail ArgumentError, "Missing required param: 'workflow_email_id'" if workflow_email_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/automations/{workflow_id}/emails/{workflow_email_id}/queue'.sub('{' + 'workflow_id' + '}', workflow_id.to_s).sub('{' + 'workflow_email_id' + '}', workflow_email_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end

    # Remove subscriber from workflow
    def remove_workflow_email_subscriber(workflow_id, body, opts = {})
      fail ArgumentError, "Missing required param: 'workflow_id'" if workflow_id.nil?
      fail ArgumentError, "Missing required param: 'body'" if body.nil?

      query_params = {}
      post_body = @api_client.object_to_http_body(body)

      local_var_path = '/automations/{workflow_id}/removed-subscribers'.sub('{' + 'workflow_id' + '}', workflow_id.to_s)
      data = @api_client.call_api(:POST, local_var_path,
        :query_params => query_params,
        :body => post_body)
      return data
    end
  end
end
