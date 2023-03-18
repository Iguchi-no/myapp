class Owner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  before_create :set_id

  private

    def set_id
      while self.owner_id.blank? || Owner.find_by(owner_id: self.owner_id).present? do
        self.owner_id = SecureRandom.urlsafe_base64(10)
      end
    end
end
