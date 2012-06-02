
class GradesController < ApplicationController
	def index
		@grades = Grade.all
		render :json => @grades
	end
end
