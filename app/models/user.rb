class User < ApplicationRecord
    after_create :welcome_send
    has_many :attendances
    has_many :events, through: :attendances

    validates :email, presence: true, uniqueness: true,
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }

        def welcome_send
          UserMailer.welcome_email(self).deliver_now
        end
      
      

end
