Note: this documentation was generated automatically from the tasks.py code using an AI. Although we are confident in the reliability of the data displayed here, errors may occur.


**activity table**

| Column | Description |
|--|--|
| event_name | This column contains the name of the event. For example, "message_sent", "guild_joined", etc. |
| day | The date when the event occurred, formatted as 'Year-Month-Day'. |
| hour | The hour when the event occurred. |
| occurrence_count | The number of times the event occurred. |
| associated_channel_id | Channel ID associated with the event. |
| associated_guild_id | Guild ID associated with the event. |
| associated_user_id | User ID associated with the event. |
| extra_field_1 | Additional information about the event. Varies depending on the type of event. |
| extra_field_2 | More additional information about the event. Again, varies depending on the type of event. |

**dm_channels_data table**

| Column | Description |
|--|--|
| channel_id | ID of the direct message (DM) channel. |
| dm_user_id | User ID of the DM. |
| user_name | Username in the DM. |
| display_name | Display name of the user in DM. |
| user_avatar_url | URL of the user’s avatar in DM. |
| total_message_count | Total number of messages in the DM. |
| total_voice_channel_duration | Total duration of voice communications in the channel. |
| sentiment_score | Sentiment score of the conversation in the DM. |

**guild_channels_data table**

| Column | Description |
|--|--|
| channel_id | ID of the guild (group chat) channel. |
| guild_id | ID of the guild. |
| channel_name | Name of the guild channel. |
| total_message_count | Total number of messages in the guild channel. |
| total_voice_channel_duration | Total duration of voice communications in the guild channel. |

**guilds table**

| Column | Description |
|--|--|
| guild_id | ID of the guild. |
| guild_name | Name of the guild. |
| total_message_count | Total number of messages in the guild. |

**payments table**

| Column | Description |
|--|--|
| payment_id | ID of the payment. |
| payment_date | Date of the payment, formatted as 'Year-Month-Day'. |
| payment_amount | Amount of the payment. |
| payment_currency | Currency of the payment. |
| payment_description | Description of the payment. |

**voice_sessions table**

| Column | Description |
|--|--|
| channel_id | ID of the channel where the voice session occurred. |
| guild_id | ID of the guild where the voice session occurred. |
| duration_mins | Duration of the voice session, in minutes. |
| started_date | Date and time when the voice session started. |
| ended_date | Date and time when the voice session ended. |

**sessions table**

| Column | Description |
|--|--|
| duration_mins | Duration of the session, in minutes. |
| started_date | Date and time when the session started. |
| ended_date | Date and time when the session ended. |
| device_os | Operating system of the device used in the session. |

**package_data table**

| Column | Description |
|--|--|
| package_id | ID of the data package. |
| package_version | Version of the data package. |
| package_owner_id | ID of the owner of the package. |
| package_owner_name | Name of the owner of the package. |
| package_owner_display_name | Display name of the package owner. |
| package_owner_avatar_url | URL of the package owner's avatar. |
| package_is_partial | Indicates whether the package is partial or complete. |