
class TeksController < ApplicationController
	def index
    query = params[:search]
    teks = Search.search({description: query, keywords: query}, false)
    teks.delete_if do |t|
      if  params[:grade]
        t.grade.id != params[:grade]
      else
        false
      end
    end

    teks.delete_if do |t|
      if  params[:subject]
        t.subject.id != params[:subject]
      else
        false
      end
    end

		render json:  teks
  end


end
