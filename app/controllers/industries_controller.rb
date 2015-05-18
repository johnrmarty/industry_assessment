class IndustriesController < ApplicationController

def index
	@industries = Industry.all
end 

def new
	@industry = Industry.new
end 

def create
	@industry = Industry.new(industry_params)
		if @industry.save
			redirect_to industry_path(@industry), notice: "Industry was created successfully"
		else 
			render :new
		end 
end 


def show
  @industry = Industry.find(params[:id])
end 

private 
def industry_params
	params.require(:industry).permit(:name, :description, :created_at, :updated_at)
	end 


end 








