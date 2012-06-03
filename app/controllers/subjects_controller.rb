
class SubjectsController < ApplicationController
	def index
		if g = params[:grade]
			grade = Grade.find(g)
			m = {}
			grade.teks.each do |t| 
				m[t.subject.name] = t.subject
			end
			@subjects = m.values
		else
			@subjects = Subject.all			
		end
		render json: @subjects
	end
end
