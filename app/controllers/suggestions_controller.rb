class SuggestionsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  	@suggestion = Suggestion.new
  end

  def create
  	@suggestion = Suggestion.new(suggestion_params)
    @suggestion.save!
    redirect_to root_path
  end

  def show
  end

  def index
    @suggestions = Suggestion.all
  end

  private

  def suggestion_params
  	params.require(:suggestion).permit(:name_owner, :email_owner, :name_contact, :email, :phone_number, :address, :code_postal, :ville, :description, :category)
  end
end
