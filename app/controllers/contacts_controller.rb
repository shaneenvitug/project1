class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.create contact_params
    @current_user.contacts << contact
    redirect_to contact
  end

  def edit
    @contact = Contact.find params[:id]
  end

  def update
    contact = Contact.find params[:id]
    contact.update contact_params
    redirect_to contact
  end

  def show
    @contact = Contact.find params[:id]
  end

  def destroy
    contact = Contact.find params[:id]
    contact.destroy
    redirect_to contacts_path
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :address, :company, :photo)
  end
end
