
class TeksController < ApplicationController
	def index		
		ops = {}
		puts params
		ops.merge! grade_id: params[:grade] if params[:grade] 
		puts ops
		puts "ASDF"
		ops.merge! subject_id: params[:subject] if params[:subject]
		puts ops
		@teks = Teks.where(ops) 
		render json: @teks
	end
end
