class Order < ApplicationRecord
   belongs_to :patient, foreign_key: "user_id"
end
