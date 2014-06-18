class PatientsController < ApplicationController
	def index
   		@patients = Patient.all
  	end

	def show
		@patients = Patient.find(params[:id])
	end

	def new
		@patients = Patient.new
	end

	def create
		@patients = Patient.new(params.require(:patient).permit(:name, :number, :email, :appointment, :description, :avatar))

		@patients.save
		redirect_to @patients
	end
end
