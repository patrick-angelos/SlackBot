# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

desc 'Conversations methods.'
command 'conversations' do |g|
  g.desc 'Archives a conversation.'
  g.long_desc %( Archives a conversation. )
  g.command 'archive' do |c|
    c.flag 'channel', desc: 'ID of conversation to archive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_archive(options))
    end
  end

  g.desc 'Closes a direct message or multi-person direct message.'
  g.long_desc %( Closes a direct message or multi-person direct message. )
  g.command 'close' do |c|
    c.flag 'channel', desc: 'Conversation to close.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_close(options))
    end
  end

  g.desc 'Initiates a public or private channel-based conversation'
  g.long_desc %( Initiates a public or private channel-based conversation )
  g.command 'create' do |c|
    c.flag 'name', desc: 'Name of the public or private channel to create.'
    c.flag 'is_private', desc: 'Create a private channel instead of a public one.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_create(options))
    end
  end

  g.desc "Fetches a conversation's history of messages and events."
  g.long_desc %( Fetches a conversation's history of messages and events. )
  g.command 'history' do |c|
    c.flag 'channel', desc: 'Conversation ID to fetch history for.'
    c.flag 'cursor', desc: "Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first 'page' of the collection. See pagination for more detail."
    c.flag 'inclusive', desc: 'Include messages with latest or oldest timestamp in results only when either timestamp is specified.'
    c.flag 'latest', desc: 'End of time range of messages to include in results.'
    c.flag 'limit', desc: "The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached."
    c.flag 'oldest', desc: 'Start of time range of messages to include in results.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_history(options))
    end
  end

  g.desc 'Retrieve information about a conversation.'
  g.long_desc %( Retrieve information about a conversation. )
  g.command 'info' do |c|
    c.flag 'channel', desc: 'Conversation ID to learn more about.'
    c.flag 'include_locale', desc: 'Set this to true to receive the locale for this conversation. Defaults to false.'
    c.flag 'include_num_members', desc: 'Set to true to include the member count for the specified conversation. Defaults to false.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_info(options))
    end
  end

  g.desc 'Invites users to a channel.'
  g.long_desc %( Invites users to a channel. )
  g.command 'invite' do |c|
    c.flag 'channel', desc: 'The ID of the public or private channel to invite user(s) to.'
    c.flag 'users', desc: 'A comma separated list of user IDs. Up to 1000 users may be listed.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_invite(options))
    end
  end

  g.desc 'Joins an existing conversation.'
  g.long_desc %( Joins an existing conversation. )
  g.command 'join' do |c|
    c.flag 'channel', desc: 'ID of conversation to join.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_join(options))
    end
  end

  g.desc 'Removes a user from a conversation.'
  g.long_desc %( Removes a user from a conversation. )
  g.command 'kick' do |c|
    c.flag 'channel', desc: 'ID of conversation to remove user from.'
    c.flag 'user', desc: 'User ID to be removed.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_kick(options))
    end
  end

  g.desc 'Leaves a conversation.'
  g.long_desc %( Leaves a conversation. )
  g.command 'leave' do |c|
    c.flag 'channel', desc: 'Conversation to leave.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_leave(options))
    end
  end

  g.desc 'Lists all channels in a Slack team.'
  g.long_desc %( Lists all channels in a Slack team. )
  g.command 'list' do |c|
    c.flag 'cursor', desc: "Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first 'page' of the collection. See pagination for more detail."
    c.flag 'exclude_archived', desc: 'Set to true to exclude archived channels from the list.'
    c.flag 'limit', desc: "The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the list hasn't been reached. Must be an integer no larger than 1000."
    c.flag 'types', desc: 'Mix and match channel types by providing a comma-separated list of any combination of public_channel, private_channel, mpim, im.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_list(options))
    end
  end

  g.desc 'Retrieve members of a conversation.'
  g.long_desc %( Retrieve members of a conversation. )
  g.command 'members' do |c|
    c.flag 'channel', desc: 'ID of the conversation to retrieve members for.'
    c.flag 'cursor', desc: "Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first 'page' of the collection. See pagination for more detail."
    c.flag 'limit', desc: "The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached."
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_members(options))
    end
  end

  g.desc 'Opens or resumes a direct message or multi-person direct message.'
  g.long_desc %( Opens or resumes a direct message or multi-person direct message. )
  g.command 'open' do |c|
    c.flag 'channel', desc: "Resume a conversation by supplying an im or mpim's ID. Or provide the users field instead."
    c.flag 'return_im', desc: 'Boolean, indicates you want the full IM channel definition in the response.'
    c.flag 'users', desc: 'Comma separated lists of users. If only one user is included, this creates a 1:1 DM.  The ordering of the users is preserved whenever a multi-person direct message is returned. Supply a channel when not supplying users.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_open(options))
    end
  end

  g.desc 'Renames a conversation.'
  g.long_desc %( Renames a conversation. )
  g.command 'rename' do |c|
    c.flag 'channel', desc: 'ID of conversation to rename.'
    c.flag 'name', desc: 'New name for conversation.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_rename(options))
    end
  end

  g.desc 'Retrieve a thread of messages posted to a conversation'
  g.long_desc %( Retrieve a thread of messages posted to a conversation )
  g.command 'replies' do |c|
    c.flag 'channel', desc: 'Conversation ID to fetch thread from.'
    c.flag 'ts', desc: "Unique identifier of a thread's parent message."
    c.flag 'cursor', desc: "Paginate through collections of data by setting the cursor parameter to a next_cursor attribute returned by a previous request's response_metadata. Default value fetches the first 'page' of the collection. See pagination for more detail."
    c.flag 'inclusive', desc: 'Include messages with latest or oldest timestamp in results only when either timestamp is specified.'
    c.flag 'latest', desc: 'End of time range of messages to include in results.'
    c.flag 'limit', desc: "The maximum number of items to return. Fewer than the requested number of items may be returned, even if the end of the users list hasn't been reached."
    c.flag 'oldest', desc: 'Start of time range of messages to include in results.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_replies(options))
    end
  end

  g.desc 'Sets the purpose for a conversation.'
  g.long_desc %( Sets the purpose for a conversation. )
  g.command 'setPurpose' do |c|
    c.flag 'channel', desc: 'Conversation to set the purpose of.'
    c.flag 'purpose', desc: 'A new, specialer purpose.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_setPurpose(options))
    end
  end

  g.desc 'Sets the topic for a conversation.'
  g.long_desc %( Sets the topic for a conversation. )
  g.command 'setTopic' do |c|
    c.flag 'channel', desc: 'Conversation to set the topic of.'
    c.flag 'topic', desc: 'The new topic string. Does not support formatting or linkification.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_setTopic(options))
    end
  end

  g.desc 'Reverses conversation archival.'
  g.long_desc %( Reverses conversation archival. )
  g.command 'unarchive' do |c|
    c.flag 'channel', desc: 'ID of conversation to unarchive.'
    c.action do |_global_options, options, _args|
      puts JSON.dump($client.conversations_unarchive(options))
    end
  end
end
