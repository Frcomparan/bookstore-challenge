class Category < ApplicationRecord
    # Description validations 
    # - Should be present
    validates :name, :description, presence: true

    # Name validations 
    # - Should be present
    # - Should't have numbers
    validates :name, uniqueness: true
    validates :name, format: { with: /\A[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ\-\. ]+\Z/,
    message: "The name doesn't have a valid format, it cannot have numbers" }
end
