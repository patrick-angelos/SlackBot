# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module UsersProfile
          #
          # Retrieves a user's profile information.
          #
          # @option options [Object] :include_labels
          #   Include labels for each ID in custom profile fields.
          # @option options [user] :user
          #   User to retrieve profile info for.
          # @see https://api.slack.com/methods/users.profile.get
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users.profile/users.profile.get.json
          def users_profile_get(options = {})
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('users.profile.get', options)
          end

          #
          # Set the profile information for a user.
          #
          # @option options [Object] :name
          #   Name of a single key to set. Usable only if profile is not passed.
          # @option options [Object] :profile
          #   Collection of key:value pairs presented as a URL-encoded JSON hash. At most 50 fields may be set. Each field name is limited to 255 characters.
          # @option options [user] :user
          #   ID of user to change. This argument may only be specified by team admins on paid teams.
          # @option options [Object] :value
          #   Value to set a single key to. Usable only if profile is not passed.
          # @see https://api.slack.com/methods/users.profile.set
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/users.profile/users.profile.set.json
          def users_profile_set(options = {})
            options = options.merge(user: users_id(options)['user']['id']) if options[:user]
            post('users.profile.set', options)
          end
        end
      end
    end
  end
end
