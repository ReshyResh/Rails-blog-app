class ApplicationRecord < ActiveRecord::Base
  def current_user
    Users.first
  end
end
