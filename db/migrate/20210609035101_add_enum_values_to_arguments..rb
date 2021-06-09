class AddEnumValuesToArguments < ActiveRecord::Migration[6.1]
  def change
    add_column :arguments, :enum_values, :string
    change_column_null :arguments, :base_concept_id, true
  end
end
