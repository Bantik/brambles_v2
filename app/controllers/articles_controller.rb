class ArticlesController < ApplicationController

  before_filter :scope_article

  def show
  end

  private

  def scope_article
    @article = Article.by_slug(params[:article])
  end

end