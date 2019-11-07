class ContactsController < ApplicationController
  def index
    @contacts = Contact.all.paginate(:page => params[:page], :per_page => 6)
    @groups = Group.all
    # @favourite = Favourite.find params [:id]
  end

  def new
    @contact = Contact.new
    @groups = Group.all
  end

  def create
    @groups = Group.all
    @contact = Contact.new contact_params
    @current_user.contacts << @contact

    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      @contact.photo = req["public_id"]
    end

    if @contact.save
      flash[:success] = "Successfully created new contact"
      redirect_to contacts_path
    else
      flash[:error] = "Failed to create new contact"
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
    if
      contact.update_attributes(contact_params)
      contact.save
      flash[:success] = "Successfully updated contact"
      redirect_to contacts_path
    else
      render :edit
    end
  end

  def show
    @contact = Contact.find params[:id]
    @contacts = Contact.all
    @groups = Group.all
  end

  def destroy
    contact = Contact.find params[:id]
    contact.destroy
    flash[:success] = "Successfully deleted contact"
    redirect_to contacts_path
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :address, :company, group_ids: [])
  end
end
