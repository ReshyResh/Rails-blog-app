class UsersController < ApplicationController
  def index; end

  def show
    return unless User.exists?(id: params['id'])

    @user = User.find_by(id: params['id'])
    render '../views/layouts/partials/_userdetails'
  end
end
