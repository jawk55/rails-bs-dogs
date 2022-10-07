class User < ApplicationRecord
  after_initialize :rol_por_defecto, :if => :new_record?

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable

  # enum role: [:user, :moderator, :admin]
  enum role: [:vendedor, :admin]

  def rol_por_defecto
    self.role ||= :vendedor
  end

end
