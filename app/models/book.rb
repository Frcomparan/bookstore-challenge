class Book < ApplicationRecord
    # Author validations
    # - Should't have numbers

    # Release date validations 
    # - Should be present

    # Name validations 
    # - Should be present
    # - Should't have numbers
    validates :name, :author, :release_date, presence: true
    validates :name, :author, format: { with: /\A[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ\-\. ]+\Z/,
    message: "The name doesn't have a valid format, it cannot have numbers" }
end
