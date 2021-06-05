class CreateConceptTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :concept_types do |t|
      t.string :names, null: false

      t.timestamps
    end
  end
end
