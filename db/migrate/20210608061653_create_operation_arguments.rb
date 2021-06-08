class CreateOperationArguments < ActiveRecord::Migration[6.1]
  def change
    create_table :arguments do |t|
      t.belongs_to :operation, null: false
      t.string :name, null: false
      t.belongs_to :base_concept, null: false

      t.timestamps
    end

    add_foreign_key :arguments, :operations
    add_foreign_key :arguments, :concepts, column: :base_concept_id
    add_foreign_key :operations, :concepts
  end
end
