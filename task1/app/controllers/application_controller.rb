class ApplicationController < ActionController::Base
	def addNewUser
		name = params[:name]
		email = params[:email]
		age = params[:age]
		comment = params[:comment]
		User.create(name: name, email: email, age: age, comment: comment)
		render json: User.all
	end
	def getAll
		render json: User.all
	end
end
