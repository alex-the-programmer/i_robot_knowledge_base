# == Schema Information
#
# Table name: concepts
#
#  id              :bigint           not null, primary key
#  name            :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  concept_type_id :bigint
#  ml_model_id     :bigint
#
# Indexes
#
#  index_concepts_on_concept_type_id  (concept_type_id)
#  index_concepts_on_ml_model_id      (ml_model_id)
#
# Foreign Keys
#
#  fk_rails_...  (concept_type_id => concept_types.id)
#  fk_rails_...  (ml_model_id => ml_models.id)
#
class Concept < ApplicationRecord
    validates :name, presence: true

    belongs_to :concept_type, optional: true #consider removing concept types
    belongs_to :ml_model, optional: true # consider making required

    has_many :child_concept_relationships, class_name: 'ConceptRelationship', foreign_key: :parent_concept_id
    has_many :child_concepts, through: :child_concept_relationships

    has_many :parent_concept_relationships, class_name: 'ConceptRelationship', foreign_key: :child_concept_id
    has_many :parent_concepts, through: :parent_concept_relationships

    has_many :concept_operations
    has_many :operations, through: :concept_operations

    def is?(concept)
        return true if id == concept.id
        return parent_concept_relationships.find_by(concept_relationship_type_id: 1).parent_concept.is?(concept) if parent_concept_relationships.any?
        false
    end
end
