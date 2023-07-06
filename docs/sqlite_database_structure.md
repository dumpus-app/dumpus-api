Note: this documentation was generated automatically from the tasks.py code using an AI. Although we are confident in the reliability of the data displayed here, errors may occur.


**activity table**

|Column|Description
|-|-
| event_name | The name of the activity event that occurred. Examples could include `message_sent`, `email_opened`, `app_crashed`, etc.|
| day | The specific day when the event occurred in the format `YYYY-MM-DD`. |
| hour | The specific hour when the event occurred as an integer value using a 24-hour clock format. |
| occurence_count | The number of times the event occurred during the specified hour on the specified day. |
| associated_channel_id | The ID of the channel associated with the event, if any. |
| associated_guild_id | The ID of the guild (paid version of a server) associated with the event, if any.  |
| associated_user_id |The ID of the user associated with the event, if any. |
| extra_field_1 | An extra field that may hold different contents depending on the event. |
| extra_field_2 | A second extra field that may hold different contents depending on the event. |

**dm_channels_data table**

|Column|Description
|-|-
| channel_id | The unique identifier for the direct message (DM) channel. | 
| dm_user_id | The unique identifier associated with the user in the DM. |
| user_name | The name of the user associated with the DM. |
| display_name | The user's display name associated with the DM. |
| user_avatar_url | The URL path to the user's avatar image. |
| total_message_count | The total number of messages counted in the DM channel. |
| total_voice_channel_duration | The total duration measured of voice interaction in the DM channel. |
| sentiment_score | A score representing the sentiment of the messages in the DM channel. |

**guild_channels_data table**

|Column|Description
|-|-
| channel_id | The unique identifier for the guild channel. |
| guild_id | The unique identifier for the guild. |
| channel_name | The name of the guild channel. |
| total_message_count | The total number of messages counted in the guild channel. |
| total_voice_channel_duration | The total duration measured of voice interaction in the guild channel. |

**guilds table**

|Column|Description
|-|-
| guild_id | The unique identifier for the guild. |
| guild_name | The name of the guild. |
| total_message_count | The total number of messages counted in the guild. |

**payments table**

| Column| Description
|-|-
| payment_id | The unique identifier for the payment. |
| payment_date | The date the payment was made in format `YYYY-MM-DD`. |
| payment_amount | The amount of the payment. |
| payment_currency | The currency the payment was made in. |
| payment_description | A description of the payment. |

**voice_sessions table**

| Column | Description
|-|-
| channel_id | The unique identifier for the channel of the voice session. |
| guild_id | The unique identifier for the guild of the voice session. |
| duration_mins | The total duration of the voice session in minutes. |
| started_date | The date the voice session started in the format `YYYY-MM-DD`.|
| ended_date | The date the voice session ended in the format `YYYY-MM-DD`.|

**sessions table**

|Column | Description
|-|-
| duration_mins | The total duration of the session in minutes. |
| started_date | The date the session started in the format `YYYY-MM-DD`.|
| ended_date | The date the session ended in the format `YYYY-MM-DD`.|
| device_os | The operating system of the device used for the session.| 

**package_data table**

| Column | Description
|-|-
| package_id | The unique identifier for the package.|
| package_version | The version of the package.|
| package_owner_id | The id of the owner of the package.|
| package_owner_name | The name of the owner of the package.|
| package_owner_display_name | The display name of the owner of the package.|
| package_owner_avatar_url | The URL path to the owner's avatar image.|