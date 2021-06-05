# == Schema Information
#
# Table name: concept_operation_relationship_types
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_concept_operation_relationship_types_on_name  (name) UNIQUE
#
class ConceptOperationRelationshipType < ApplicationRecord
    validate :name, presence: true, uniquiness: true
end
