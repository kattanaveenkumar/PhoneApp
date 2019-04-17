class HomeController < ApplicationController
  def index
  	@contacts = Contact.all
  end

  def new
  	@contact = Contact.new

  end

  def create
    @contact = Contact.create(contact_params)
    redirect_to root_path
  end

  def contact_params
    params.require(:contact).permit(:name, :phone)
  end



end
