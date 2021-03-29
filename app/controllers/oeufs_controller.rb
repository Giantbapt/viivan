class OeufsController < ApplicationController
  skip_before_action :authenticate_user!


  def new
    @oeuf = Oeuf.new
  end

  def create
    @oeuf = Oeuf.new
    @oeuf.save!
    redirect_to dashboard_path, notice:"Nouvel Oeuf ajouté, bien ouej!"
  end
  private

  def oeuf_params
    params.require(:oeuf).permit(:id)
  end
end
