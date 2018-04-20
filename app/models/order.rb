class Order < ApplicationRecord
   belongs_to :user, foreign_key: "user_id"

   # scope :search_order_id, ->(aaa) {where("id ILIKE ?", "%#{aaa}%" )}
   # def self.search(search)
   #    if search
   #       find(:all, :conditions => ['id LIKE?', "%#{search}%"])
   #    else
   #       find(:all)
   #    end
   # end
end
