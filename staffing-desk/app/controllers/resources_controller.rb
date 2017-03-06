class ResourcesController < ApplicationController
  
  def index
    @resources = Resource.all
  end
  
  def new
	@resource = Resource.new()
	render 'edit'
  end
  
  def create
	logger.info "Creating new resource, #{params[:resource][:id]}"
	if !params[:resource].has_key?(:id) or params[:resource][:id] == ""
		@resource = Resource.new(contact_params) 
		@resource.save
		redirect_to @resource
	else
		update
	end	
  end
  
  
  def show
    @resource = Resource.find(params[:id])
  end
  
  
  def edit
  	logger.info "Loading existing resource for editing"
    @resource = Resource.find(params[:id])
  end
  
  def update
  	logger.info "Updating resource."
	@resource = Resource.find(params[:resource][:id])	
	if @resource.update(resource_params)
	  redirect_to @resource
	else
	  render 'edit'
	end
  end
	
  
  private
	  def resource_params
		params.require(:resource).permit(:id, :full_name, :email, :phone, :gender, :main_skill, :notice_period, :salary_expectation, :verbal_description)
	  end
end
