class CreateMLModels < ActiveRecord::Migration[6.1]
  def change
    create_table :ml_models do |t|
      t.string :name, null: false
      t.string :filename, null: false

      t.timestamps
    end
  end
end
