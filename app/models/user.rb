# email
# password_digest

# password
# password_confirmation

class User < ApplicationRecord
  has_secure_password
end
