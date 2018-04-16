class User < ApplicationRecord
   has_secure_password
   mount_uploader :isp_bill, IspBillUploader
   mount_uploader :verification_photo, VerificationImageUploader

   validates :first_name, presence: true
   validates :country, presence: true
   validates :city, presence: true
   validates :postcode, presence: true
   validates :paypal, presence: true
   validates :isp, presence: true
   validates :bandwidth, presence: true
   validates :isp_bill, presence: true
   validates :verification_photo, presence: true
 


end

# def has_required_fields?
   #  self.first_name && self.last_name && self.country && self.city && self.postcode && self.paypal && self.isp && self.bandwidth && self.isp_bill && self.verification_photo
   # end
