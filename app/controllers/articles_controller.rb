class ArticlesController < ApplicationController
  def index
    if params[:commit] == 'Advanced Search'
      options = {:conditions => {}, :with => {}}

      if params[:subject].present?
        options[:conditions][:subject] = params[:subject]
      end

      if params[:content].present?
        options[:conditions][:content] = params[:content]
      end

      if params[:within] == '1 week'
        options[:with][:created_at] = 1.week.ago..Time.zone.now
      elsif params[:within] == '3 days'
        options[:with][:created_at] = 3.days.ago..Time.zone.now
      end

      options[:order] = 'created_at DESC' if params[:sort_by] == 'Date'
      options[:order] = 'subject DESC' if params[:sort_by] == 'Subject'

      @articles = Article.search options
    else
      @articles = Article.search params[:query]
    end
  end
end
