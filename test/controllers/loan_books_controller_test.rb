require "test_helper"

class LoanBooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan_book = loan_books(:one)
  end

  test "should get index" do
    get loan_books_url
    assert_response :success
  end

  test "should get new" do
    get new_loan_book_url
    assert_response :success
  end

  test "should create loan_book" do
    assert_difference("LoanBook.count") do
      post loan_books_url, params: { loan_book: { book_id: @loan_book.book_id, loan_date: @loan_book.loan_date, return_date: @loan_book.return_date, user_id: @loan_book.user_id } }
    end

    assert_redirected_to loan_book_url(LoanBook.last)
  end

  test "should show loan_book" do
    get loan_book_url(@loan_book)
    assert_response :success
  end

  test "should get edit" do
    get edit_loan_book_url(@loan_book)
    assert_response :success
  end

  test "should update loan_book" do
    patch loan_book_url(@loan_book), params: { loan_book: { book_id: @loan_book.book_id, loan_date: @loan_book.loan_date, return_date: @loan_book.return_date, user_id: @loan_book.user_id } }
    assert_redirected_to loan_book_url(@loan_book)
  end

  test "should destroy loan_book" do
    assert_difference("LoanBook.count", -1) do
      delete loan_book_url(@loan_book)
    end

    assert_redirected_to loan_books_url
  end
end
