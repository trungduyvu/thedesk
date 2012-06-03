
class KeywordsController < ApplicationController
  def create
    teks_id = params[:teks]
    keyword = params[:keyword]

    # create keyword
    @teks = Teks.find(teks_id)
    @keyword = @teks.keywords.build
    @keyword.name = keyword
    @keyword.save

    # add to index
    s = @teks.search
    s.keywords = "#{s.keywords} #{keyword}"
    s.save!
   
    render json: @keyword
  end
end
