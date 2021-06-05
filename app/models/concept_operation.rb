# == Schema Information
#
# Table name: concept_operations
#
#  id                                     :bigint           not null, primary key
#  created_at                             :datetime         not null
#  updated_at                             :datetime         not null
#  concept_id                             :bigint           not null
#  concept_operation_relationship_type_id :bigint           not null
#  operation_id                           :bigint           not null
#
# Indexes
#
#  index_concept_operations_on_c_o_r_t_id    (concept_operation_relationship_type_id)
#  index_concept_operations_on_concept_id    (concept_id)
#  index_concept_operations_on_operation_id  (operation_id)
#  index_contept_operations_unique           (concept_id,operation_id,concept_operation_relationship_type_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (concept_id => concepts.id)
#  fk_rails_...  (concept_operation_relationship_type_id => concept_operation_relationship_types.id)
#  fk_rails_...  (operation_id => operations.id)
#
class ConceptOperation < ApplicationRecord
    belongs_to :concept
    belongs_to :operation
    belongs_to :concept_operation_relationship_type
end
