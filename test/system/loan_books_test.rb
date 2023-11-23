require "application_system_test_case"

class LoanBooksTest < ApplicationSystemTestCase
  setup do
    @loan_book = loan_books(:one)
  end

  test "visiting the index" do
    visit loan_books_url
    assert_selector "h1", text: "Loan books"
  end

  test "should create loan book" do
    visit loan_books_url
    click_on "New loan book"

    fill_in "Book", with: @loan_book.book_id
    fill_in "Loan date", with: @loan_book.loan_date
    fill_in "Return date", with: @loan_book.return_date
    fill_in "User", with: @loan_book.user_id
    click_on "Create Loan book"

    assert_text "Loan book was successfully created"
    click_on "Back"
  end

  test "should update Loan book" do
    visit loan_book_url(@loan_book)
    click_on "Edit this loan book", match: :first

    fill_in "Book", with: @loan_book.book_id
    fill_in "Loan date", with: @loan_book.loan_date
    fill_in "Return date", with: @loan_book.return_date
    fill_in "User", with: @loan_book.user_id
    click_on "Update Loan book"

    assert_text "Loan book was successfully updated"
    click_on "Back"
  end

  test "should destroy Loan book" do
    visit loan_book_url(@loan_book)
    click_on "Destroy this loan book", match: :first

    assert_text "Loan book was successfully destroyed"
  end
end
