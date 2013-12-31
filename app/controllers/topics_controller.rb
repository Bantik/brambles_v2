class TopicsController < ApplicationController

  before_filter :scope_topic
  before_filter :scope_articles

  def show
  end

  private

  def scope_topic
    @topic = Topic.by_slug(params[:topic])
  end

  def scope_articles
    @articles = @topic && @topic.articles.asc(:title)
  end

end