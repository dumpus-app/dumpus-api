Note: this documentation was generated automatically from the tasks.py code using an AI. Although we are confident in the reliability of the data displayed here, errors may occur.


**activity table**
|Column|Description|
|---|---|
|event_name|The type of event that occurred. Examples might include 'message_sent', 'guild_joined', 'application_command_used', etc.|
|day|The day of the event, formatted as 'YYYY-mm-dd'.|
|hour|The hour of the event, as an integer in 24-hour format.|
|occurence_count|The number of occurrences of the event within the given hour.|
|associated_channel_id|The ID of the channel where the event occurred, if applicable.|
|associated_guild_id|The ID of the guild where the event occurred, if applicable.|
|associated_user_id|The ID of the user associated with the event, if applicable.|
|extra_field_1|Extra data related to the event, the nature of which varies based on the event type.|
|extra_field_2|Additional extra data related to the event, depending on the event type.|

**dm_channels_data table**
|Column|Description|
|---|---|
|channel_id|The unique ID of the Direct Message channel.|
|dm_user_id|The ID of the user with whom the DM conversation was held.|
|user_name|The username of the DM conversation partner.|
|display_name|The display name of the DM conversation partner.|
|user_avatar_url|The URL of the avatar of the DM conversation partner.|
|total_message_count|The total number of messages exchanged in the DM channel.|
|total_voice_channel_duration|The total duration of voice interaction in the DM channel, in minutes.|
|sentiment_score|The sentiment score of the channel, calculated based on the content of the messages.|

**guild_channels_data table**
|Column|Description|
|---|---|
|channel_id|The ID of the guild channel.|
|guild_id|The ID of the guild to which the channel belongs.|
|channel_name|The name of the guild channel.|
|total_message_count|The total number of messages exchanged in the channel.|
|total_voice_channel_duration|The total duration of voice interactions in the guild channel, in minutes.|

**guilds table**
|Column|Description|
|---|---|
|guild_id|The unique ID of the guild.|
|guild_name|The name of the guild.|
|total_message_count|The total number of messages exchanged within the guild.|

**payments table**
|Column|Description|
|---|---|
|payment_id|The unique ID of the payment transaction.|
|payment_date|The date of the payment transaction, formatted as 'YYYY-mm-dd'.|
|payment_amount|The amount of the payment.|
|payment_currency|The currency used for the payment.|
|payment_description|A description or note associated with the payment.|

**voice_sessions table**
|Column|Description|
|---|---|
|channel_id|The ID of the channel in which the voice session took place.|
|guild_id|The ID of the guild in which the voice session took place.|
|duration_mins|The duration of the voice session, in minutes.|
|started_date|The start date and time of the voice session, formatted as 'YYYY-mm-dd HH:MM:SS'.|
|ended_date|The end date and time of the voice session, formatted as 'YYYY-mm-dd HH:MM:SS'.|

**sessions table**
|Column|Description|
|---|---|
|duration_mins|The duration of the app session, in minutes.|
|started_date|The start date and time of the app session, formatted as 'YYYY-mm-dd HH:MM:SS'.|
|ended_date|The end date and time of the app session, formatted as 'YYYY-mm-dd HH:MM:SS'.|
|device_os|The operating system of the device used for the app session.|

**package_data table**
|Column|Description|
|---|---|
|package_id|The unique ID of the package.|
|package_version|The version of the package.|
|package_owner_id|The ID of the owner of the package.|
|package_owner_name|The username of the owner of the package.|
|package_owner_display_name|The display name of the owner of the package.|
|package_owner_avatar_url|The URL of the avatar of the owner of the package.|
|package_is_partial|A boolean signifying whether the package is partial (1) or complete (0).|