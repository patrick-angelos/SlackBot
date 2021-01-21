# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module AdminConversationsRestrictaccess
          #
          # Add an allowlist of IDP groups for accessing a channel
          #
          # @option options [Object] :channel_id
          #   The channel to link this group to.
          # @option options [Object] :group_id
          #   The IDP Group ID to be an allowlist for the private channel.
          # @option options [Object] :team_id
          #   The workspace where the IDP Group and channel exist.
          # @see https://api.slack.com/methods/admin.conversations.restrictAccess.addGroup
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations.restrictAccess/admin.conversations.restrictAccess.addGroup.json
          def admin_conversations_restrictAccess_addGroup(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            throw ArgumentError.new('Required arguments :group_id missing') if options[:group_id].nil?
            post('admin.conversations.restrictAccess.addGroup', options)
          end

          #
          # List all IDP Groups linked to a channel
          #
          # @option options [Object] :channel_id
          #   .
          # @option options [Object] :team_id
          #   The workspace where the channele exists. This argument is required for channels only tied to one workspace, and optional for channels that are shared across an organization.
          # @see https://api.slack.com/methods/admin.conversations.restrictAccess.listGroups
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations.restrictAccess/admin.conversations.restrictAccess.listGroups.json
          def admin_conversations_restrictAccess_listGroups(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            post('admin.conversations.restrictAccess.listGroups', options)
          end

          #
          # Remove a linked IDP group linked from a private channel
          #
          # @option options [Object] :channel_id
          #   The channel to remove the linked group from.
          # @option options [Object] :group_id
          #   The IDP Group ID to remove from the private channel.
          # @option options [Object] :team_id
          #   The workspace where the IDP Group and channel exist.
          # @see https://api.slack.com/methods/admin.conversations.restrictAccess.removeGroup
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/admin.conversations.restrictAccess/admin.conversations.restrictAccess.removeGroup.json
          def admin_conversations_restrictAccess_removeGroup(options = {})
            throw ArgumentError.new('Required arguments :channel_id missing') if options[:channel_id].nil?
            throw ArgumentError.new('Required arguments :group_id missing') if options[:group_id].nil?
            throw ArgumentError.new('Required arguments :team_id missing') if options[:team_id].nil?
            post('admin.conversations.restrictAccess.removeGroup', options)
          end
        end
      end
    end
  end
end
