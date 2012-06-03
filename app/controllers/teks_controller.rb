
class TeksController < ApplicationController
	def index
    query = params[:search]
    teks = Search.search({description: query, keywords: query}, false).map {|s| s.teks }
    teks.delete_if do |t|
      if params[:grade]
        not t.grade.id == params[:grade].to_i
      else
        false
      end
    end

    teks.delete_if do |t|
      if  params[:subject]
        not t.subject.id == params[:subject].to_i
      else
        false
      end
    end

		render json: teks
  end


end
