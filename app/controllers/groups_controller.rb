class GroupsController < ApplicationController
  def new
    @group = Group.new
    @groups = @current_user.groups.uniq
  end

  def create
    group = Group.create group_params
    if group.save
      @current_user.groups << group
      flash[:success] = "Successfully created new group"
      redirect_to contacts_path
    else
      render :new
    end
  end

  def edit
    @group = Group.find params[:id]
    @groups = @current_user.groups.uniq
  end

  def update
    group = Group.find params[:id]
    group.update group_params
    redirect_to group
  end

  def show
    @group = Group.find params[:id]
    @groups = @current_user.groups.uniq
  end

  def destroy
    group = Group.find params[:id]
    group.destroy
    redirect_to root_path
  end

  private
  def group_params
    params.require(:group).permit(:name)
  end
end
