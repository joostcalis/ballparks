class FeedsController < ApplicationController
  def index
    require 'nokogiri'
    require 'open-uri'
      doc = Nokogiri::XML(open("http://mlb.mlb.com/partnerxml/gen/news/rss/mlb.xml"))
      mlb_news = Hash.from_xml(doc.to_xml)
      mlb_news = mlb_news['rss']['channel']['item']

      render json: {
        mlb_news: mlb_news
      }
    end
end
