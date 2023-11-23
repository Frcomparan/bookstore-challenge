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
    message: "doesn't have a valid format, it cannot have numbers" }

    # Associations
    has_many :book_category, dependent: :destroy
    has_many :categories, through: :book_category
    has_many :loan_books, dependent: :destroy

    # Accept attributes to associate book with a categories
    accepts_nested_attributes_for :book_category, allow_destroy: true

    # At least one category validation
    validate :must_have_at_least_one_category

    def taken?
        Book.joins(:loan_books).where(loan_books: { return_date: nil }).include?(self)
    end
    
    def must_have_at_least_one_category
        deleted_categories_count = book_category.count { |book_cat| book_cat._destroy == true }

        errors.add(:category, "must be present, a book must have at least one category") if categories.empty?
        errors.add(:categories, "can't be deleted, a book must have at least one category") if deleted_categories_count == book_category.size
    end
end
