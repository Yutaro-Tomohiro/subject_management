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
# **`required`**    | `boolean`          | `default(FALSE), not null`
# **`semester`**    | `integer`          | `not null`
# **`year`**        | `integer`          | `not null`
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
#
class Subject < ApplicationRecord
  has_many :assignments

  enum semester: [:the_first, :the_second, :the_third, :the_fourth]

  validates :name, :semester, :year, presence: { message: "%{value} must be given please" }

  scope :required, ->(boolean) { where(required: boolean) }
  scope :semester, ->(semester) {where(semester: semester) }
  scope :year, ->(year) { where(year: year) }
end
