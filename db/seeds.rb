Concept.create!([
  {name: "noun", concept_type_id: nil, ml_model_id: nil},
  {name: "object", concept_type_id: nil, ml_model_id: nil},
  {name: "quality", concept_type_id: nil, ml_model_id: nil},
  {name: "dimension", concept_type_id: nil, ml_model_id: nil},
  {name: "weight", concept_type_id: nil, ml_model_id: nil},
  {name: "height", concept_type_id: nil, ml_model_id: nil},
  {name: "length", concept_type_id: nil, ml_model_id: nil},
  {name: "radius", concept_type_id: nil, ml_model_id: nil},
  {name: "color", concept_type_id: nil, ml_model_id: nil},
  {name: "material", concept_type_id: nil, ml_model_id: nil},
  {name: "width", concept_type_id: nil, ml_model_id: nil},
  {name: "table", concept_type_id: nil, ml_model_id: nil},
  {name: "wood", concept_type_id: nil, ml_model_id: nil},
  {name: "plate", concept_type_id: nil, ml_model_id: nil}
])
ConceptType.create!([
  {name: "adjective"},
  {name: "noun"}
])
ConceptRelationshipType.create!([
  {name: "is_a"}
])
Operation.create!([
  {name: "pick", concept_id: 2},
  {name: "go_to", concept_id: 2},
  {name: "put_at", concept_id: 2},
  {name: "move", concept_id: 2}
])
ConceptRelationship.create!([
  {parent_concept_id: 1, child_concept_id: 2, concept_relationship_type_id: 1},
  {parent_concept_id: 1, child_concept_id: 3, concept_relationship_type_id: 1},
  {parent_concept_id: 3, child_concept_id: 4, concept_relationship_type_id: 1},
  {parent_concept_id: 4, child_concept_id: 7, concept_relationship_type_id: 1},
  {parent_concept_id: 4, child_concept_id: 6, concept_relationship_type_id: 1},
  {parent_concept_id: 4, child_concept_id: 8, concept_relationship_type_id: 1},
  {parent_concept_id: 3, child_concept_id: 10, concept_relationship_type_id: 1},
  {parent_concept_id: 3, child_concept_id: 11, concept_relationship_type_id: 1},
  {parent_concept_id: 4, child_concept_id: 9, concept_relationship_type_id: 1},
  {parent_concept_id: 3, child_concept_id: 5, concept_relationship_type_id: 1},
  {parent_concept_id: 2, child_concept_id: 12, concept_relationship_type_id: 1},
  {parent_concept_id: 11, child_concept_id: 13, concept_relationship_type_id: 1},
  {parent_concept_id: 2, child_concept_id: 14, concept_relationship_type_id: 1}
])
Argument.create!([
  {operation_id: 1, name: "subject", base_concept_id: 2, enum_values: nil},
  {operation_id: 2, name: "destination", base_concept_id: 2, enum_values: nil},
  {operation_id: 3, name: "destination", base_concept_id: 2, enum_values: nil},
  {operation_id: 3, name: "position", base_concept_id: nil, enum_values: "on_top,inside"},
  {operation_id: 4, name: "subject", base_concept_id: 2, enum_values: nil},
  {operation_id: 4, name: "destination", base_concept_id: 2, enum_values: nil},
  {operation_id: 4, name: "position", base_concept_id: nil, enum_values: "on_top,inside"}
])
