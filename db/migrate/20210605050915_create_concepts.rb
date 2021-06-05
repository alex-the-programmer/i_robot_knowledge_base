class CreateConcepts < ActiveRecord::Migration[6.1]
  def change
    create_table :concepts do |t|
      t.string :name, null: false
      t.belongs_to :concept_type, null: false
      t.belongs_to :ml_model

      t.timestamps
    end
  end
end
