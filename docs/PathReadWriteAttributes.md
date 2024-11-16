# NationbuilderClient::PathReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_due_date_interval** | **String** | Default interval path is expected to be completed by when due date is enabled. | [optional] |
| **default_point_person_id** | **String** | Default point person. | [optional] |
| **default_value_amount** | **Float** | Default value when value amount is enabled. | [optional] |
| **due_date_is_enabled** | **Boolean** | Enabled due dates for the path. | [optional][default to false] |
| **name** | **String** | Name of the path. | [optional] |
| **value_amount_is_enabled** | **Boolean** | Enables the path to have a value amount. | [optional][default to false] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::PathReadWriteAttributes.new(
  default_due_date_interval: none,
  default_point_person_id: 1,
  default_value_amount: 3.50,
  due_date_is_enabled: false,
  name: Attend a fundraiser,
  value_amount_is_enabled: false
)
```
