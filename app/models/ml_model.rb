# == Schema Information
#
# Table name: ml_models
#
#  id         :bigint           not null, primary key
#  filename   :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class MLModel < ApplicationRecord
    validate :name, persence: true

    has_one :concept
end
