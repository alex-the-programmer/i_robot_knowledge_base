# == Schema Information
#
# Table name: concepts
#
#  id              :bigint           not null, primary key
#  name            :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  concept_type_id :bigint           not null
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

    belongs_to :concept_type
    belongs_to :ml_model

    has_many :concept_operations
    has_many :operations, through: :concept_operations
end
