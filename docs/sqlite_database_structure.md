Note: this documentation was generated automatically from the tasks.py code using an AI. Although we are confident in the reliability of the data displayed here, errors may occur.


**activity table**

|Column|Description|
|---|---|
|event_name|The name of the event.|
|day|The day the event occurred, formatted as '%Y-%m-%d'.|
|hour|The hour the event occurred.|
|occurrence_count|The number of times the event occurred within the given hour.|
|associated_channel_id|The channel id associated with the event, if applicable.|
|associated_guild_id|The guild id associated with the event, if applicable.|
|associated_user_id|The user id associated with the event, if applicable.|
|extra_field_1|An extra field for providing more details for the event.|
|extra_field_2|Another extra field for providing more details for the event.|

**dm_channels_data table**

|Column|Description|
|---|---|
|channel_id|The ID of the Direct Message (DM) channel.|
|dm_user_id|The user ID of the DM recipient.|
|user_name|The username of the DM recipient.|
|display_name|The display name of the DM recipient.|
|user_avatar_url|URL of the DM recipient's avatar image.|
|total_message_count|The total number of messages exchanged in the DM.|
|total_voice_channel_duration|The total duration in minutes of voice conversations in the DM.|
|sentiment_score|Score representing the general sentiment of the DM conversation.|

**[Other Tables]**

(Repeat for the guild_channels_data, guilds, payments, voice_sessions, sessions and package_data tables, with appropriate descriptions for each column.)

**Note:** Replace [Other Tables] with the actual name of the tables.