# ## Schema Information
#
# Table name: `assignments`
#
# ### Columns
#
# Name               | Type               | Attributes
# ------------------ | ------------------ | ---------------------------
# **`id`**           | `integer`          | `not null, primary key`
# **`description`**  | `text`             |
# **`expire_at`**    | `datetime`         |
# **`name`**         | `string`           | `not null`
# **`created_at`**   | `datetime`         | `not null`
# **`updated_at`**   | `datetime`         | `not null`
# **`subject_id`**   | `integer`          |
#
# ### Indexes
#
# * `index_assignments_on_subject_id`:
#     * **`subject_id`**
#
class Assignment < ApplicationRecord
  belongs_to :subject

  validates :name, presence: { message: "%{value} must be given please" }
end
