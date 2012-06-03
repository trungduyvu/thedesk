
class ElpsController < ApplicationController
	def index
		@elps = nil
		if p = params[:section]
			@elps = Elps.find_all_by_section(p)
		else
			@elps = Elps.all
		end
		
		render json: @elps
	end

	def create 
		description = params[:description]
		formatstring = params[:formatstring]
		section = params[:section]
		subsection = params[:subsection]

		# create ELPS
		@elps = Elps.new
		@elps.description = description
		@elps.formatstring = formatstring
		@elps.section = section
		@elps.subsection = subsection
		@elps.save

		render json: @elps
	end
end
