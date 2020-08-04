class Api::V1::SessionController < ApplicationController


  def sign_up
    @user = User.new(user_params)
    if @user.save
      render json: { user: @user,  status: :accepted}
    else
      render json: {
        error: 'Unable to save entity',
        message: "#{@user.errors.full_messages.join(', ')} ",
        status: :bad_request
      }
    end
  end
end
