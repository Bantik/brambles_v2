class ArticlesController < ApplicationController

  before_filter :scope_article

  def show
  end

  private

  def scope_article
    @article = Article.where(:title => params[:article].humanize.titleize).first
  end

end