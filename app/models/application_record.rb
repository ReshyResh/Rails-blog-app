class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def current_user
    Users.first
  end
end
