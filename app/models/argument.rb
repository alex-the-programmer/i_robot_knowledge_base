# == Schema Information
#
# Table name: arguments
#
#  id              :bigint           not null, primary key
#  enum_values     :string
#  name            :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  base_concept_id :bigint
#  operation_id    :bigint           not null
#
# Indexes
#
#  index_arguments_on_base_concept_id  (base_concept_id)
#  index_arguments_on_operation_id     (operation_id)
#
# Foreign Keys
#
#  fk_rails_...  (base_concept_id => concepts.id)
#  fk_rails_...  (operation_id => operations.id)
#
class Argument < ApplicationRecord
    validates :name, presence: true

    belongs_to :operation
    belongs_to :base_concept, class_name: 'Concept', optional: true
end
