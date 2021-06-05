# == Schema Information
#
# Table name: operations
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Operation < ApplicationRecord
    validate_presence_of :name

    has_many :concept_operations
    has_many :concepts, through: :concept_operations
end
