# == Schema Information
#
# Table name: concept_types
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_concept_types_on_name  (name) UNIQUE
#
class ConceptType < ApplicationRecord
    validates :name, presence: true, uniqueness: true

    has_many :concepts
end
