
class TeksController < ApplicationController
	def index		
		ops = {}
		ops.merge! grade_id: params[:grade] if params[:grade] 		
		ops.merge! subject_id: params[:subject] if params[:subject]
		@teks = Teks.where(ops) 
		render json: @teks
	end
end
