Note: this documentation was generated automatically from the tasks.py code using an AI. Although we are confident in the reliability of the data displayed here, errors may occur.


**activity table**

|Column|Description|
|---|---|
|event_name|The name of the event, which represents various types of user actions such as sending messages, joining guilds, using applications, and reacting to messages. These user actions can distinguish the records in the `activity` table from each other.|
|day|The date when the event takes place. The format is year-month-day (e.g., '2021-09-28').|
|hour|The hour of the day when the event takes place (0 to 23).|
|occurence_count|The number of times the event happens during the previously specified date and hour.|
|associated_channel_id|The ID of the chat or voice channel where the event happens.|
|associated_guild_id|The ID of the guild (server) where the event happens.|
|associated_user_id|The ID of the user associated with the event.|
|extra_field_1|Additional data field which depends on the type of event.|
|extra_field_2|Additional data field which depends on the type of event.|

**dm_channels_data table**

|Column|Description|
|---|---|
|channel_id|The unique ID of the direct message channel.|
|dm_user_id|The unique ID of the user that the direct message is sent to.|
|user_name|The username of the user.|
|display_name|The display name of the user in the server.|
|user_avatar_url|The URL of the user's avatar image.|
|total_message_count|The total number of messages in the direct message channel.|
|total_voice_channel_duration|The total duration of voice chat in the direct message channel, presumably in minutes.|
|sentiment_score|The sentiment score for the messages in the direct message channel.|

**guild_channels_data table**

|Column|Description|
|---|---|
|channel_id|The unique ID of the guild channel.|
|guild_id|The ID of the guild (server).|
|channel_name|The name of the guild channel.|
|total_message_count|The total number of messages sent in the guild channel.|
|total_voice_channel_duration|The total duration of voice chat in the guild channel, presumably in minutes.|

**guilds table**

|Column|Description|
|---|---|
|guild_id|The unique ID of the guild (server).|
|guild_name|The name of the guild (server).|
|total_message_count|The total number of messages sent in the guild.|

**payments table**

|Column|Description|
|---|---|
|payment_id|The unique ID of the payment.|
|payment_date|The date when the payment is made. The format is year-month-day (e.g., '2021-09-28').|
|payment_amount|The amount of the payment.|
|payment_currency|The currency of the payment.|
|payment_description|The description of the payment.|

**voice_sessions table**

|Column|Description|
|---|---|
|channel_id|The unique ID of the voice channel.|
|guild_id|The ID of the guild (server).|
|duration_mins|The duration of the voice session in minutes.|
|started_date|The start date and time of the voice session.|
|ended_date|The end date and time of the voice session.|

**sessions table**

|Column|Description|
|---|---|
|duration_mins|The duration of the session in minutes.|
|started_date|The start date and time of the session.|
|ended_date|The end date and time of the session.|
|device_os|The operating system of the device used in the session.|

**package_data table**

|Column|Description|
|---|---|
|package_id|The unique ID of the data package.|
|package_version|The version of the data package (e.g., '0.1.0').|
|package_owner_id|The ID of the owner of the data package.|
|package_owner_name|The username of the owner.|
|package_owner_display_name|The display name of the owner in the server.|
|package_owner_avatar_url|The URL of the owner's avatar image.|
|package_is_partial|A boolean field that indicates whether the data package is partial or not. This can either be 1 (True) for partial or 0 (False) for complete data packages.|