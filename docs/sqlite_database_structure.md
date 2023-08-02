Note: this documentation was generated automatically from the tasks.py code using an AI. Although we are confident in the reliability of the data displayed here, errors may occur.


**activity table**

|Column|Description|
|--|--|
|event_name|The type of event that occurred. Examples may include 'message_sent', 'guild_joined', 'application_command_used', 'add_reaction', etc.|
|day|The date in the format 'YYYY-MM-DD' when the event occurred.|
|hour|The hour of the day when the event occurred. Integer value from 0 to 23, inclusive.|
|occurence_count|The count of how many times the event occurred at the specified hour of the specified day.|
|associated_channel_id|The ID of the channel associated with the event, if applicable. For instance, chat messages and reaction counts are associated with their respective channels.|
|associated_guild_id|The ID of the guild (server) associated with the event, if applicable.|
|associated_user_id|The ID of the user associated with the event, if applicable.|
|extra_field_1|An additional field to capture any extra event information, such as the emoji_name in 'add_reaction' event.|
|extra_field_2|A secondary additional field to capture any further event information, such as a status indicator for if an emoji is custom-made ('1') or not ('0').|

**dm_channels_data table**

|Column|Description|
|--|--|
|channel_id|The unique ID of the direct message (DM) channel.|
|dm_user_id|The unique ID of the user on the other end of the DM.|
|user_name|The username of the user on the other end of the DM.|
|display_name|The display name of the user on the other end of the DM.|
|user_avatar_url|The URL of the avatar image for the user on the other end of the DM.|
|total_message_count|The total number of messages exchanged in this DM channel.|
|total_voice_channel_duration|Total duration that voice channels have been used in this DM channel.|
|sentiment_score|A numerical score representing the sentiment of the messages in this DM channel. Positive score - positive sentiment, negative - negative sentiment.|

(Additional table descriptions would follow a similar format)

**package_data table**

|Column|Description|
|--|--|
|package_id|The unique ID of the package being processed.|
|package_version|The version of the package being processed.|
|package_owner_id|The ID of the owner of the package.|
|package_owner_name|The username of the owner of the package.|
|package_owner_display_name|The display name of the owner of the package.|
|package_owner_avatar_url|The URL of the avatar image for the owner of the package.|
|package_is_partial|Flag indicating whether the package is partial or not. '1' indicates a partial package and '0' indicates a complete package.|