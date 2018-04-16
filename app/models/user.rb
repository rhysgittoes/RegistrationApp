class User < ApplicationRecord
   has_secure_password
   mount_uploader :isp_bill, IspBillUploader

end
