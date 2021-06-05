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
class Concept < ApplicationRecord
    validate :name, persence: true

    belongs_to :concept_type
    belongs_to :ml_model
end
