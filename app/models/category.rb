class Category < ApplicationRecord


    validates :name, :description, presence: true
    validates :name, uniqueness: true
    validates :name, format: { with: /\A[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ\-\. ]+\Z/,
    message: "The name doesn't have a valid format, it cannot have numbers" }
end
