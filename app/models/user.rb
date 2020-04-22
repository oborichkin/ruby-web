class User < ApplicationRecord

    has_many :values, dependent: :destroy

    before_save { self.email = email.downcase }

    validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
    validates :email, presence: true, uniqueness: true

end
