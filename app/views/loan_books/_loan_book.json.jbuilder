json.extract! loan_book, :id, :book_id, :user_id, :loan_date, :return_date, :created_at, :updated_at
json.url loan_book_url(loan_book, format: :json)
