class User < ApplicationRecord
   has_secure_password
   mount_uploader :isp_bill, IspBillUploader
   mount_uploader :verification_photo, VerificationImageUploader

   validates :first_name, presence: true
 


end

# def has_required_fields?
   #  self.first_name && self.last_name && self.country && self.city && self.postcode && self.paypal && self.isp && self.bandwidth && self.isp_bill && self.verification_photo
   # end
