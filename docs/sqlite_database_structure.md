Note: this documentation was generated automatically from the tasks.py code using an AI. Although we are confident in the reliability of the data displayed here, errors may occur.


**package_data table**
|Column|Description
|--|--|
|package_id|Identifier for the package.|
|package_version|Version number of the package.|
|package_owner_id|ID of the owner of the package.|
|package_owner_name|Username of the owner of the package.|
|package_owner_display_name|Display name of the owner of the package.|
|package_owner_avatar_url|URL of the owner's avatar.|
|package_is_partial|Field indicates whether the package is partial (1) or not (0).|

**activity table**
|Column|Description
|--|--|
|event_name|Describes the type of event (e.g., message_sent, guild_joined, application_command_used, add_reaction.)|
|day|Day of the event in 'YYYY-MM-DD' format.|
|hour|Hour of the day when the event occurred.|
|occurrence_count|Number of times the event occurred at the specified hour.|
|associated_channel_id|Associated identifier of the channel.|
|associated_guild_id|Associated identifier of the guild.|
|associated_user_id|ID of user associated with the event.|
|extra_field_1|Extra field for additional information (varies by event).|
|extra_field_2|Another extra field for more information (varies by event).|

**dm_channels_data table**
|Column|Description
|--|--|
|channel_id|ID of the channel.|
|dm_user_id|Identifier for the direct message sender.|
|user_name|Username of the direct message sender.|
|display_name|Display name of the direct message sender.|
|user_avatar_url|URL of sender's avatar.|
|total_message_count|Total number of messages sent in the channel.|
|total_voice_channel_duration|Total duration of voice channel participation.|
|sentiment_score|Score indicating sentiment of the messages sent.|

**guild_channels_data table**
|Column|Description
|--|--|
|channel_id|Identifier of the channel.|
|guild_id|ID of the guild.|
|channel_name|Name of the channel.|
|total_message_count|Total count of messages in the channel.|
|total_voice_channel_duration|Total duration of voice participation in the channel.|

**guilds table**
|Column|Description
|--|--|
|guild_id|Identifier for the guild.|
|guild_name|Name of the guild.|
|total_message_count|Total number of messages sent in the guild.|

**payments table**
|Column|Description
|--|--|
|payment_id|ID for the payment.|
|payment_date|Date when the payment was made, in 'YYYY-MM-DD' format.|
|payment_amount|Amount of the payment.|
|payment_currency|Currency used for the payment.|
|payment_description|Description of the payment.|

**voice_sessions table**
|Column|Description
|--|--|
|channel_id|ID of the channel where voice session took place.|
|guild_id|Identifier of the guild.|
|duration_mins|Duration of the voice session in minutes.|
|started_date|When the voice session started.|
|ended_date|When the voice session ended.|

**sessions table**
|Column|Description
|--|--|
|duration_mins|Duration of the session in minutes.|
|started_date|When the session started.|
|ended_date|When the session ended.|
|device_os|Operating system of the device used during the session.|