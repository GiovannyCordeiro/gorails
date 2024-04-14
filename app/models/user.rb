# email
# password_digest

# password
# password_confirmation

# Para usar voce pode fazer
# User.create(email: 'email@test.com', password: '1234', password_confirmation: '1234')

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Must be a valid email address' }
end


# para fazer rollback e atualizar executar a nova migração
# rails db:migrate:redo
# isso evita justamente ter que rodar o
# `rails db:rollback`
# `rails db:migrate`
