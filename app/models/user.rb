# email
# password_digest

# password
# password_confirmation

class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true
end


# para fazer rollback e atualizar executar a nova migração
# rails db:migrate:redo
# isso evita justamente ter que rodar o
# `rails db:rollback`
# `rails db:migrate`
