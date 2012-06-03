
class KeywordsController < ApplicationController
  def create
    teks_id = params[:teks]
    keyword = params[:keyword]
    puts  params
    @teks = Teks.find(teks_id)
    @keyword = @teks.keywords.build
    @keyword.name = keyword
    @keyword.save

    render json: @keyword
  end
end
