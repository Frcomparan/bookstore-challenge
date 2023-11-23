class ApplicationController < ActionController::Base
  # Pagination
  include Pagy::Backend

  Pagy::DEFAULT[:items] = 5
end
