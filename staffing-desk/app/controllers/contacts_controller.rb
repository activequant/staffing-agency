class ContactsController < ApplicationController
  def new
  	logger.info "Rendering new contact."
	@contact = Contact.new()
    render 'edit'
  end
  
  def index
    logger.info "Listing all contacts."
    @contacts = Contact.all
  end
  
  def create
	logger.info "Creating new contact, #{params[:contact][:id]}"
	if !params[:contact].has_key?(:id) or params[:contact][:id] == ""
		@contact = Contact.new(contact_params) 
		@contact.save
		redirect_to @contact
	else
		update
	end	
  end
  
  def show
    @contact = Contact.find(params[:id])
  end

  def edit
  	logger.info "Loading existing contact for editing"
    @contact = Contact.find(params[:id])
  end
  
  def update
  	logger.info "Updating contact."
	@contact = Contact.find(params[:contact][:id])	
	if @contact.update(contact_params)
	  redirect_to @contact
	else
	  render 'edit'
	end
  end
	
  private
	  def contact_params
		params.require(:contact).permit(:id, :full_name, :greeting, :phone, :email, :likes, :dislikes)
	  end
end
