class ContactsController < ApplicationController
  def index
    if @current_user.present?
      @contacts = @current_user.contacts.paginate(:page => params[:page], :per_page => 6)
      @groups = @current_user.groups.uniq
    else
      @contacts = Contact.none
      @groups = Group.none
    end
    # @favourite = Favourite.find params [:id]
  end

  def new
    @contact = Contact.new
    @groups = @current_user.groups.uniq
  end

  def create
    @groups = @current_user.groups.uniq
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
    @groups = @current_user.groups.uniq
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
    @contacts = @current_user.contacts
    @current_user.groups.uniq
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
