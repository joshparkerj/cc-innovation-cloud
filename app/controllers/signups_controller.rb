# frozen_string_literal: true

class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end

  def create
    @signup = Signup.new(signup_params)
    if @signup.save
      redirect_to '/thanks'
    else
      render 'new'
    end
  end

  private

  def signup_params
    params.require(:signup).permit(:email)
  end
end
