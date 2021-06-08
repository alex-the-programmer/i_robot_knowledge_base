# == Schema Information
#
# Table name: operations
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  concept_id :integer          default(1), not null
#
# Foreign Keys
#
#  fk_rails_...  (concept_id => concepts.id)
#
class Operation < ApplicationRecord
    validates :name, presence: true

    has_many :arguments
    belongs_to :concept
end
