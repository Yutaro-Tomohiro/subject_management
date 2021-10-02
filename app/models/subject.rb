# ## Schema Information
#
# Table name: `subjects`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `integer`          | `not null, primary key`
# **`name`**        | `string`           | `not null`
# **`required`**    | `boolean`          | `not null`
# **`semester`**    | `string`           | `not null`
# **`yaer`**        | `integer`          | `not null`
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#
class Subject < ApplicationRecord
  has_many :assignments

  validates :name, :required, :semester, :yaer, presence: { message: "%{value} must be given please" }
end
