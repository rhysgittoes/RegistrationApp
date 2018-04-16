class User < ApplicationRecord
   has_secure_password
   mount_uploader :isp_bill, IspBillUploader
   mount_uploader :verification_photo, VerificationImageUploader

end
