class MakeConceptTypeAndMLModelOptionalOnConcepts < ActiveRecord::Migration[6.1]
  def change
    change_column_null :concepts, :concept_type_id, true # will possible be deleted int he future 
    change_column_null :concepts, :ml_model_id, true
  end
end
