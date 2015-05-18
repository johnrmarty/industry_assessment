class CompaniesController < ApplicationController

	def index
		@companies = Company.all
	end 

	def new 
		@company = Company.new
	end 

	def edit
		@company = Company.find(params[:id])
	end 


	def create
		@company = Company.new(company_params)
		if @company.save
			redirect_to company_path(@company), notice: "company was created successfully"
		else
			render :new
		end 
	end 

	def update
		@company = Company.find(params[:id])
		if @company.update(company_params)
			redirect_to companies_path(@company), notice: 'Company was successfully updated'
	end 
	end 


	def show
	@company = Company.find(params[:id])
	@companies = Company.all
	end 


	def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path(@company), notice: 'Company was successfully destroyed.'
  	end


	private 
	def company_params
		params.require(:company).permit(:name, :description, :price, :industry_id, :created_at, :updated_at)
	end 

end 




