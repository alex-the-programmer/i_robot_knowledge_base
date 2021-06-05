# == Schema Information
#
# Table name: concept_relationship_types
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ConceptRelationshipType < ApplicationRecord
    validate_presence_of :name
end
