# == Schema Information
#
# Table name: concept_relationships
#
#  id                           :bigint           not null, primary key
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  child_concept_id             :bigint           not null
#  concept_relationship_type_id :bigint
#  parent_concept_id            :bigint           not null
#
# Indexes
#
#  index_concept_relationships_on_child_concept_id              (child_concept_id)
#  index_concept_relationships_on_concept_relationship_type_id  (concept_relationship_type_id)
#  index_concept_relationships_on_parent_concept_id             (parent_concept_id)
#
# Foreign Keys
#
#  fk_rails_...  (child_concept_id => concepts.id)
#  fk_rails_...  (concept_relationship_type_id => concept_relationship_types.id)
#  fk_rails_...  (parent_concept_id => concepts.id)
#
class ConceptRelationship < ApplicationRecord
    belongs_to :parent_concept, class_name: 'Concept'
    belongs_to :child_concept, class_name: 'Concept'
    belongs_to :concept_relationship_type
end
