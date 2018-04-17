class User < ApplicationRecord
   has_secure_password
   mount_uploader :isp_bill, IspBillUploader
   mount_uploader :verification_photo, VerificationImageUploader

   validates :first_name, presence: true, on: :update, on: :update
   validates :country, presence: true, on: :update
   validates :city, presence: true, on: :update
   validates :postcode, presence: true, on: :update
   validates :paypal, presence: true, on: :update
   validates :isp, presence: true, on: :update
   validates :bandwidth, presence: true, on: :update
   validates :isp_bill, presence: true, on: :update
   validates :verification_photo, presence: true, on: :update
 


end

# def has_required_fields?
   #  self.first_name && self.last_name && self.country && self.city && self.postcode && self.paypal && self.isp && self.bandwidth && self.isp_bill && self.verification_photo
   # end
