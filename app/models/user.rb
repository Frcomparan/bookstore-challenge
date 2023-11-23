class User < ApplicationRecord
    # Email validations
    # - Should be uniquiq
    # - Should have a valid format
    # - Should be present
    validates :email, uniqueness: true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

    # Name validations 
    # - Should be present
    # - Should't have numbers
    validates :name, :email, presence: true
    validates :name, format: { with: /\A[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ\-\. ]+\Z/,
    message: "The name doesn't have a valid format, it cannot have numbers" }

    # Associations
    has_many :loan_books, dependent: :destroy

    def waiting_to_return?
        User.joins(:loan_books).where(loan_books: { return_date: nil }).include?(self)
    end
end
