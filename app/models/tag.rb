class Tag < ApplicationRecord
  belongs_to :study,optional:true
end
