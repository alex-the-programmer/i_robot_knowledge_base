class CreateConceptOperations < ActiveRecord::Migration[6.1]
  def change
    create_table :concept_operations do |t|
      t.belongs_to :concept, null: false
      t.belongs_to :operation, null: false 
      t.belongs_to :concept_operation_relationship_type, null: false, index: { name: 'index_concept_operations_on_c_o_r_t_id' }

      t.timestamps
    end
  end
end
