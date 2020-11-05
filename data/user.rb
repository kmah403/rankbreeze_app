class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :invitable

  has_one_attached :avatar
  has_many :listings

  after_initialize :generate_code

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def generate_code
    loop do
      code = SecureRandom.random_number(10_000_000_000)
      break self.code = code unless User.where(code: code).exists?
    end
  end
end
