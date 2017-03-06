class PositionsController < ApplicationController
  
  def index
    @positions = Position.all
  end
  
  def new
	@position = Position.new()
	render 'edit'
  end
  
  def create
	logger.info "Creating new position, #{params[:position][:id]}"
	if !params[:position].has_key?(:id) or params[:position][:id] == ""
		pparams = position_params
		pparams[:contact] = Contact.find(pparams[:contact])
		@position = Position.new(pparams) 
		@position.save
		redirect_to @position
	else
		update
	end	
  end
  
  
  def show
    @position = Position.find(params[:id])
  end
  
  
  def edit
  	logger.info "Loading existing position for editing"
    @position = Position.find(params[:id])
  end
  
  def update
  	logger.info "Updating position."
	@position = Position.find(params[:position][:id])
	pparams = position_params
	pparams[:contact] = Contact.find(pparams[:contact])	
	if @position.update(pparams)
	  redirect_to @position
	else
	  render 'edit'
	end
  end
	
  
  private
	  def position_params
		params.require(:position).permit(:id, :upsa_project, :description, :profile, :client_ref_id, :sales_level, :priority, :fill_by, :job_desc, :contact)
	  end
end
