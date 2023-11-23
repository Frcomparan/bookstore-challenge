class LoanBooksController < ApplicationController
  before_action :set_loan_book, only: %i[ show edit update destroy ]

  # GET /loan_books or /loan_books.json
  def index
    @pagy, @loan_books = pagy(LoanBook.all)
  end

  # GET /loan_books/new
  def new
    @loan_book = LoanBook.new
    @books = Book.excluding(Book.joins(:loan_books).where(loan_books: { return_date: nil }))
    @users = User.order(:email)
  end

  # POST /loan_books or /loan_books.json
  def create
    @loan_book = LoanBook.new(loan_book_params)

    @loan_book.loan_date = DateTime.now

    respond_to do |format|
      if @loan_book.save
        format.html { redirect_to loan_books_url(), notice: "Loan book was successfully created." }
        format.json { render :show, status: :created, location: @loan_book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loan_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_books/1 or /loan_books/1.json
  def update
    respond_to do |format|
      if @loan_book.update(return_date: DateTime.now)
        format.html { redirect_to loan_books_url(), notice: "Loan book was successfully updated." }
        format.json { render :show, status: :ok, location: @loan_book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loan_book.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_book
      @loan_book = LoanBook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loan_book_params
      params.require(:loan_book).permit(:book_id, :user_id, :loan_date, :return_date)
    end
end
