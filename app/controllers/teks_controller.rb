
class TeksController < ApplicationController
  def index
    query_map = {}
    if params[:grade] and g = Grade.find(params[:grade].to_i)
      query_map[:grade] = g.name
    end
    if params[:subject] and s = Grade.find(params[:subject].to_i)
      query_map[:subject] = s.name
    end
    query_map[:searchable_text] = params[:search] if params[:search]

    render json: Search.search(query_map).map {|s| s.teks }
  end
end
