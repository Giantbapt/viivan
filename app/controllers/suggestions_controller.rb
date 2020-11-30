class SuggestionsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
  	@suggestion = Suggestion.new
  end

  def create
  	@suggestion = Suggestion.new(suggestion_params)
    if @suggestion.save
      redirect_to root_path(anchor: "suggestions"), notice:"Nous avons bien reçu votre suggestion, merci pour votre aide !"

    else
      render :new
    end
    # respond_to do |format|
    #   format.js { flash[:notice] = "Created order" }
    # end

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
