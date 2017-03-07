class PropositionsController < ApplicationController
  
  def index
	logger.info("Listing all propositions")
    @propositions = Proposition.all
  end

  def show
	@proposition = Proposition.find(params[:id])
  end

  def new
	logger.info("New proposition")
    @proposition = Proposition.new
	render 'edit'
  end

  def edit
  	@proposition = Proposition.find(params[:id])
  end

  def create
  
  
	if !params[:proposition].has_key?(:id) or params[:proposition][:id] == ""		
		logger.info(proposition_params)
		pparams = proposition_params
		pparams[:position] = Position.find(pparams[:position])
		pparams[:resource] = Resource.find(pparams[:resource])
		logger.info(pparams)
		@proposition = Proposition.new(pparams) 
		@proposition.save
		redirect_to @proposition
	else
		update
	end	
	

  end

  def update
	logger.info "Updating proposition."
	@proposition = Proposition.find(params[:proposition][:id])	
	pparams = proposition_params
	pparams[:position] = Position.find(pparams[:position])		
	pparams[:resource] = Resource.find(pparams[:resource])
	if @proposition.update(pparams)
	  redirect_to @proposition
	else
	  render 'edit'
	end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proposition
      @proposition = Proposition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proposition_params
      params.require(:proposition).permit(:id, :position, :resource, :proposal_date)
    end
end
