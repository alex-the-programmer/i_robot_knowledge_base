class AdjustOperations < ActiveRecord::Migration[6.1]
  def change
    drop_table :concept_operations
    drop_table :concept_operation_relationship_types

    add_column :operations, :concept_id, :integer, null: false, default: 1
  end
end
