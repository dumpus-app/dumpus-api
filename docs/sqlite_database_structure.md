Note: this documentation was generated automatically from the tasks.py code using an AI. Although we are confident in the reliability of the data displayed here, errors may occur.


**activity table**

|Column|Description|
|---|---|
|event_name|The type of event. This could include activities such as message_sent, guild_joined and so on. Each event gives a clear indication of the type of activity represented by each row.|
|day|The day of the event in the format '%Y-%m-%d'.|
|hour|The hour of the event in 24-hour format.|
|occurence_count|The count of occurrence of a particular event in a given day and hour.|
|associated_channel_id|The channel ID where the event took place.|
|associated_guild_id|The guild ID where the event took place.|
|associated_user_id|The user ID who instigated the event.|
|extra_field_1, extra_field_2|Extra fields that could contain various types of information depending on the event type, such as emoji_name for add_reaction event or os in the case of app_opened event.|

**dm_channels_data table**

|Column|Description|
|---|---|
|channel_id|The ID of the direct message (DM) channel.|
|dm_user_id|The user ID of the person involved in the DM.|
|user_name|The username.|
|display_name|The display name of the user.|
|user_avatar_url|The URL for the user's avatar.|
|total_message_count|The number of messages in that DM channel.|
|total_voice_channel_duration|Total duration of the voice channel in that DM channel.|
|sentiment_score|The aggregated sentiment score of the messages in that DM channel.|

**guild_channels_data table**

|Column|Description|
|---|---|
|channel_id|The ID of the channel in the guild.|
|guild_id|The ID of the guild.|
|channel_name|The name of the channel.|
|total_message_count|The number of messages sent in the channel.|
|total_voice_channel_duration|Total duration of voice activity in that channel.|

**guilds table**

|Column|Description|
|---|---|
|guild_id|The ID of the guild.|
|guild_name|The name of the guild.|
|total_message_count|The number of messages sent in the guild.|

**payments table**

|Column|Description|
|---|---|
|payment_id|The ID of the payment transaction.|
|payment_date|The date of the payment transaction.|
|payment_amount|The amount of the payment.|
|payment_currency|The currency used in the payment.|
|payment_description|The description of the payment transaction.|

**voice_sessions table**

|Column|Description|
|---|---|
|channel_id|The ID of the voice channel.|
|guild_id|The ID of the guild.|
|duration_mins|The duration of the voice session in minutes.|
|started_date|The date and time when the voice session started.|
|ended_date|The date and time when the voice session ended.|

**sessions table**

|Column|Description|
|---|---|
|duration_mins|The duration of the session in minutes.|
|started_date|The date and time when the session started.|
|ended_date|The date and time when the session ended.|
|device_os|The operating system of the device used in the session.|

**package_data table**

|Column|Description|
|---|---|
|package_id|The ID of the data package.|
|package_version|The version of the data package.|
|package_owner_id|The user ID of the owner of the package.|
|package_owner_name|The username of the owner of the package.|
|package_owner_display_name|The display name of the owner of the package.|
|package_owner_avatar_url|The URL for the avatar of the package owner.|
|package_is_partial|This is a boolean field indicating whether the package data is partial or not. A 1 indicates it is partial and a 0 indicates it’s complete.|