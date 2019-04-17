class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def index
    @contacts = Contact.all
  end

  def create
    @contact = Contact.create(contact_params)
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def search
    @contacts = Contact.search(params[:q])
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :phone)
  end

end
