class ContactsController < ApplicationController
  before_action :get_contact, only: [:edit,:update, :destroy, :show]
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path
    else
      render :new
    
    end
  end

  def show
    
    
  end

  def edit
    
  end

  def update
    
    if @contact.update_attributes(contact_params)
      redirect_to contacts_path
    else
      render :edit
    end
  end

 

  private
  def contact_params
    params.require(:contact).permit(:name, :age,:observations,:email,:phone)
  end

  def get_contact
    @contact = Contact.find_by(id:params[:id]) 
  end
  
  
end
