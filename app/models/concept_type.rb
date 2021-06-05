# == Schema Information
#
# Table name: concept_types
#
#  id         :bigint           not null, primary key
#  names      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ConceptType < ApplicationRecord
    validate :name, persence: true, uniquiness: true

    has_many :concepts
end
