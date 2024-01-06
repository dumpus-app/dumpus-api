Note: this documentation was generated automatically from the tasks.py code using an AI. Although we are confident in the reliability of the data displayed here, errors may occur.


**activity table**

|Column|Description|
|--- |--- |
|event_name|A unique identifier string representing the type of event, e.g., 'message_sent', 'guild_joined'.|
|day|The day when the event occurred in the format '%Y-%m-%d', e.g., '2022-01-01'.|
|hour|The hour of the day (24-hour format) when the event occurred, e.g., 15 for 3:00 PM.|
|occurrence_count|The total number of occurrences for the type of event in the particular hour of the day.|
|associated_channel_id|The unique identifier of the channel associated with the event if applicable, otherwise None.|
|associated_guild_id|The unique identifier of the guild associated with the event if applicable, otherwise None.|
|associated_user_id|The unique identifier of the user associated with the event if applicable, otherwise None.|
|extra_field_1|Additional information associated with the event if applicable, otherwise None.|
|extra_field_2|Further additional information associated with the event if applicable, otherwise None.|

**dm_channels_data table**

|Column|Description|
|--- |--- |
|channel_id|Unique identifier of the direct message channel.|
|dm_user_id|Unique identifier of the user involved in the direct message conversation.|
|user_name|Username of the user involved in the direct message conversation.|
|display_name|Display name of the user involved in the direct message conversation.|
|user_avatar_url|URL of the avatar image for the user involved in the direct message conversation.|
|total_message_count|Total number of messages exchanged in the direct message conversation.|
|total_voice_channel_duration|Cumulative duration spent in voice channels.|
|sentiment_score|Overall sentiment score for the direct message conversation.|

**guild_channels_data table**

|Column|Description|
|--- |--- |
|channel_id|Unique identifier of the guild channel.|
|guild_id|Unique identifier of the guild where the channel is located.|
|channel_name|Name of the guild channel.|
|total_message_count|Total number of messages exchanged in the guild channel.|
|total_voice_channel_duration|Cumulative duration spent in voice channels in the guild.|

**guilds table**

|Column|Description|
|--- |--- |
|guild_id|Unique identifier of the guild.|
|guild_name|Name of the guild.|
|total_message_count|Total number of messages exchanged in the guild.|

**payments table**

|Column|Description|
|--- |--- |
|payment_id|Unique identifier of the payment.|
|payment_date|Date when the payment was made in the format '%Y-%m-%d'.|
|payment_amount|Amount of the payment.|
|payment_currency|Currency in which the payment was made.|
|payment_description|Description of the payment.

**voice_sessions table**

|Column|Description|
|--- |--- |
|channel_id|Unique identifier of the voice channel occupied during the session.|
|guild_id|Unique identifier of the guild where the voice session takes place.|
|duration_mins|Duration of the voice session in minutes.|
|started_date|When the voice session started (datetime format).|
|ended_date|When the voice session ended (datetime format).

**sessions table**

|Column|Description|
|--- |--- |
|duration_mins|Total duration of the session in minutes.|
|started_date|When the session started (datetime format).|
|ended_date|When the session ended (datetime format).|
|device_os|Operating system of the device used in the session.

**package_data table**

|Column|Description|
|--- |--- |
|package_id|Unique identifier of the package.|
|package_version|Version of the package. Typically '0.1.0'.|
|package_owner_id|Unique identifier of the owner of the package.|
|package_owner_name|Username of the package owner.|
|package_owner_display_name|Display name of the package owner.|
|package_owner_avatar_url|URL of the avatar image for the package owner.|
|package_is_partial|Indicates if the package is partial (1 if yes, 0 if no).