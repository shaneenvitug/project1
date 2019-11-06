class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    @groups = Group.all
  end

  def new
    @contact = Contact.new
    @groups = Group.all
  end

  def create
    contact = Contact.create contact_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      contact.photo = req["public_id"]
      contact.save
    end
    @current_user.contacts << contact
    if contact.save
      flash[:success] = "Successfully created new contact"
      redirect_to contacts_path
    else
      render :new
    end
  end

  def edit
    @contact = Contact.find params[:id]
    @groups = Group.all
  end

  def update
    contact = Contact.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      contact.photo = req["public_id"]
    end
      contact.update_attributes(contact_params)
      contact.save
  end

  def show
    @contact = Contact.find params[:id]
    @contacts = Contact.all
    @groups = Group.all
  end

  def destroy
    contact = Contact.find params[:id]
    contact.destroy
    redirect_to contacts_path
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :address, :company, group_ids: [])
  end
end
