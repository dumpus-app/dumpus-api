Note: this documentation was generated automatically from the tasks.py code using an AI. Although we are confident in the reliability of the data displayed here, errors may occur.


**activity table**
|Column|Description|
|--|--|
|event_name|The type of event that occurred. Values include 'message_sent', 'guild_joined', 'application_command_used', 'add_reaction', etc.|
|day|The day in 'YYYY-MM-DD' format on which the event occurred.|
|hour|The exact hour, in military timing, during which the event occurred.|
|occurence_count|The number of times the event happened in the specified hour.|
|associated_channel_id|The ID of the channel associated with the event, if any.|
|associated_guild_id|The ID of the guild associated with the event, if any.|
|associated_user_id|The ID of the user associated with the event, if any.|
|extra_field_1|An extra field used for storing additional information about the event. The actual information stored here depends on the event type.|
|extra_field_2|Another extra field used for storing additional information about the event. The actual information stored here depends on the event type.|

**dm_channels_data table**
|Column|Description|
|--|--|
|channel_id|The unique ID of the direct message (DM) channel in question.|
|dm_user_id|The unique ID of the user with whom the direct messages are being exchanged.|
|user_name|The username associated with dm_user_id.|
|display_name|The display name of the user associated with dm_user_id.|
|user_avatar_url|The URL of the avatar image of the user associated with dm_user_id.|
|total_message_count|The total count of messages exchanged in this DM channel.|
|total_voice_channel_duration|The total duration spent by the user in voice channels within this DM channel. It's not clear what value will be present.|
|sentiment_score|The sentiment score associated with the messages in the DM channel. It's not clear how this value is calculated or what scale is used.|

Other tables follow a similar pattern where the columns represent unique identifiers for various entities (e.g., guilds, channels, users), counts of certain events (e.g., messages sent, voice channel duration), or associated metadata (e.g., user names, avatar URLs, timestamps).

**sessions table**
|Column|Description|
|--|--|
|duration_mins|The total duration of the session in minutes.|
|started_date|The start date and time of the session.|
|ended_date|The end date and time of the session.|
|device_os|The operating system of the device used during the session.|

**package_data table**
|Column|Description|
|--|--|
|package_id|The unique identifier for the packaged data.|
|package_version|The version number of the package.|
|package_owner_id|The ID of the owner of the package.|
|package_owner_name|The name of the owner of the package.|
|package_owner_display_name|The display name of the owner of the package.|
|package_owner_avatar_url|The URL of the owner of the package's avatar image.|
|package_is_partial|A boolean value indicating whether the package contains partial data.|

The descriptions provided are based on the given context and may not fully capture the precise meaning or usage of each column in the actual application.