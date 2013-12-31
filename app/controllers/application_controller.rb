class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :scope_topics

  private

  def scope_topics
    @topics ||= Topic.all.asc(:name)
  end

end
